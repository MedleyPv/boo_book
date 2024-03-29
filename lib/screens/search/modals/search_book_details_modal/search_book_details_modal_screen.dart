import 'package:flutter/material.dart';

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/services/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'search_book_details_modal_bloc.dart';
import 'widgets/index.dart';

// TODO(Pasha): Add hero
@RoutePage()
class SearchBookDetailsModalScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const SearchBookDetailsModalScreen({
    super.key,
    required this.initial,
  });

  final BookSearchModel initial;

  @override
  Widget wrappedRoute(BuildContext context) {
    final formBloc = getIt<SearchBookDetailsModalBloc>(
      param1: initial,
    )..initialize();

    return BlocProvider(
      create: (_) => formBloc,
      child: CustomFormBlocListener(
        formBloc: formBloc,
        onSuccess: (context, state) {
          final newBook = state.response! as UserBookModel;

          context.read<HomeBloc>().addItem(newBook, AddPosition.start);
          context.read<LibraryBloc>().addItem(newBook);
        },
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final formBloc = context.read<SearchBookDetailsModalBloc>();

    return LandingPageScaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 60),
            child: BlocBuilder<SelectFieldBloc<BookSearchModel>,
                SelectFieldBlocState<BookSearchModel>>(
              bloc: formBloc.book,
              builder: (context, state) {
                final book = state.value!;

                return Column(
                  children: [
                    BookAvatarFrame(
                      imageUrl: book.imageLinks.smallThumbnail,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      book.title,
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      book.authors.firstOrNull ?? '',
                      style: textTheme.titleSmall,
                    ),
                    if (book.description.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ExpandableText(
                          book.description,
                          maxLines: 8,
                          expandText: 'показати більше',
                          collapseText: 'зрогнути',
                          animation: true,
                          animationDuration: const Duration(milliseconds: 350),
                          linkStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          style: textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    const SizedBox(height: 30),
                    BlocBuilder<ListFieldBloc<BookReviewModel>,
                        ListFieldBlocState<BookReviewModel>>(
                      bloc: formBloc.reviews,
                      builder: (context, state) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Коментарі',
                                  style: textTheme.labelLarge,
                                ),
                                const SizedBox(width: 6),
                                CustomBadge(
                                  number: state.value.length,
                                ),
                                const Spacer(),
                                if (state.value.length > 1)
                                  GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () => context.pushRoute(
                                      ViewAllReviewsModalRoute(
                                        reviews: formBloc.reviews,
                                      ),
                                    ),
                                    child: Text(
                                      'Переглянути всі',
                                      style: textTheme.labelSmall?.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            ...state.value.take(3).map(
                                  (review) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: BookReviewCard(
                                      review: review,
                                    ),
                                  ),
                                ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: _ActionButtons(),
          ),
        ],
      ),
    );
  }
}

// TODO(Pasha): Adapt text sizes
class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: AppColors.scaffoldBg.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.35),
            blurRadius: 10,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: BooOutlinedButton(
              title: 'Читати',
              onTap: () => _submitAndNavigate(
                context,
                (book) => context.replaceRoute(
                  ReadingBookModalRoute(book: book),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: BooOutlinedButton(
              title: 'Додати до полиці',
              onTap: () => _submitAndNavigate(
                context,
                (book) => context.navigateTo(
                  const LibraryRoute(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _submitAndNavigate(
    BuildContext context,
    void Function(UserBookModel) navigate,
  ) async {
    final formBloc = context.read<SearchBookDetailsModalBloc>();

    await formBloc.submit();

    final state = formBloc.state;

    final book = state.response;

    if (state.status.isSuccess && book != null && context.mounted) {
      return navigate(book);
    }
  }
}

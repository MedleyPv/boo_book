import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/services/index.dart';
import 'package:boo_book/styles/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'completed_book_modal_bloc.dart';
import 'widgets/index.dart';

@RoutePage()
class CompletedBookModalScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const CompletedBookModalScreen({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget wrappedRoute(BuildContext context) {
    final formBloc = getIt<CompletedBookModalBloc>(param1: book);

    return BlocProvider(
      create: (_) => formBloc,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final formBloc = context.read<CompletedBookModalBloc>();

    final book = formBloc.initial;

    final freeSpace =
        context.screenHeight - 646 - AppStyleConstants.landingTopPadding;

    return CustomFormBlocListener(
      formBloc: formBloc,
      onSuccess: (context, state) {
        final book = state.response as UserBookModel?;

        if (book != null) {
          context.read<LibraryBloc>().editItem(book);
        }
      },
      child: LandingPageScaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: context.popRoute,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 154,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 22,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl: book.imageUrl,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book.title,
                          style: textTheme.titleMedium,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          book.author,
                          style: textTheme.titleSmall,
                        ),
                        const SizedBox(height: 20),
                        RatingBar.builder(
                          itemSize: 22,
                          initialRating: book.rating,
                          unratedColor: Colors.grey,
                          itemPadding: const EdgeInsets.only(right: 4),
                          itemBuilder: (_, index) {
                            return Assets.icons.start.svg();
                          },
                          onRatingUpdate: (rating) {
                            formBloc.rating.changeValue(rating);
                            formBloc.submit();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              BookReviewFormBuilder(
                fieldBloc: formBloc.review,
                onSave: formBloc.saveReview,
              ),
              SizedBox(height: freeSpace),
              BookAnalytics(
                book: book,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

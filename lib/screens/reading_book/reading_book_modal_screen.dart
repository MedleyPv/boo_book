import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/router/index.dart';
import 'package:boo_book/screens/search/modals/search_book_details_modal/widgets/index.dart';
import 'package:boo_book/services/index.dart';
import 'package:boo_book/widgets/index.dart';
import 'reading_book_modal_bloc.dart';
import 'widgets/index.dart';

@RoutePage()
class ReadingBookModalScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const ReadingBookModalScreen({
    super.key,
    required this.book,
  });

  final UserBookModel book;

  @override
  Widget wrappedRoute(BuildContext context) {
    final formBloc = getIt<ReadingBookModalBloc>(
      param1: book,
    );

    return BlocProvider(
      create: (_) => formBloc,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<ReadingBookModalBloc>();

    return CustomFormBlocListener(
      formBloc: formBloc,
      child: LandingPageScaffold(
        appBar: AppBar(),
        safeAreaBottom: false,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  BookAvatarFrame(
                    imageUrl: book.imageUrl,
                  ),
                  const SizedBox(height: 20),
                  ReadingProgressActionFormBuilder(
                    formBloc: formBloc.timerSeconds,
                    currentBook: formBloc.currentBook,
                    startFrom: () {
                      return formBloc.records.firstOrNull?.pageCount;
                    },
                    onStartReading: (pageCount) {
                      formBloc.startPage.changeValue(pageCount);
                    },
                  ),
                  TimeRemainingFormBuilder(
                    formBloc: formBloc.remainingTime,
                  ),
                  const SizedBox(height: 20),
                  ReadingTimerFormBuilder(
                    formBloc: formBloc.timerSeconds,
                    onFinish: formBloc.finishReading,
                  ),
                ],
              ),
            ),
            RecordsTitleBuilder(
              formBloc: formBloc,
            ),
            RecordsListFormBuilder(
              formBloc: formBloc,
            ),
          ],
        ),
      ),
    );
  }
}

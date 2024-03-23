import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

@injectable
class SearchBookDetailsModalBloc extends FormBloc<UserBookModel, String> {
  late final SelectFieldBloc<BookSearchModel> book;
  late final ListFieldBloc<BookReviewModel> reviews;

  final BookSearchModel initial;
  bool redirectToReadingPage = false;

  final BooksRepository booksRepository;
  final SearchRepository searchRepository;
  final ReviewsRepository reviewsRepository;

  SearchBookDetailsModalBloc({
    @factoryParam required this.initial,
    required this.booksRepository,
    required this.searchRepository,
    required this.reviewsRepository,
  }) : super() {
    book = SelectFieldBloc(
      initialValue: initial,
      forceValueToSet: true,
    );

    reviews = ListFieldBloc();

    addFields([
      book,
      reviews,
    ]);
  }

  @override
  FutureOr<void> onInitialize(Map<String, dynamic> params) async {
    final bookSearchId = params['bookSearchId'];

    emitLoading();

    try {
      // TODO(Pasha): Add loading by id
      // ignore: unnecessary_null_comparison
      if (initial == null && bookSearchId != null) {
        final bookResult = await searchRepository.getBookBySearchId(
          bookSearchId,
        );

        book.changeValue(bookResult);
      }

      final searchId = book.value!.id;
      final reviewsResult = await reviewsRepository.getBookReviews(searchId);

      reviews.changeValue(reviewsResult);

      emitInitial();
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emitFailure('Щось пішло не так і виникла помилка');
    }
  }

  @override
  FutureOr<void> onSubmit() async {
    emitLoading();

    try {
      final currentBook = book.value!;

      final payload = UserBookModel(
        title: currentBook.title,
        author: currentBook.authors.firstOrNull ?? '',
        imageUrl: currentBook.imageLinks.smallThumbnail,
      );

      final response = await booksRepository.addBookToCollection(payload);

      emitSuccess(response);
    } catch (e, stackTrace) {
      addError(e, stackTrace);
      redirectToReadingPage = false;

      emitFailure('Something went wrong!');
    }
  }
}

import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stx_flutter_form_bloc/stx_flutter_form_bloc.dart';

import 'package:boo_book/blocs/index.dart';
import 'package:boo_book/models/index.dart';
import 'package:boo_book/repositories/index.dart';

@injectable
class CompletedBookModalBloc extends FormBloc<UserBookModel, String> {
  late final InputFieldBloc<double> rating;
  late final TextFieldBloc review;

  UserBookModel initial;

  final AuthBloc authBloc;
  final BooksRepository booksRepository;
  final ReviewsRepository reviewsRepository;

  CompletedBookModalBloc({
    @factoryParam required this.initial,
    required this.authBloc,
    required this.booksRepository,
    required this.reviewsRepository,
  }) {
    rating = InputFieldBloc(
      defaultValue: 0,
      initialValue: initial.rating,
    );

    review = TextFieldBloc(
      initialValue: initial.review?.description,
    );

    addFields([
      rating,
      review,
    ]);
  }

  Future<void> saveReview() async {
    final reviewText = review.value ?? '';
    final userProfile = authBloc.state.user!;

    try {
      emitLoading();

      final payload = BookReviewModel(
        uid: initial.review?.uid ?? '',
        bookSearchId: initial.searchUid,
        created: DateTime.now(),
        description: reviewText,
        rating: rating.value,
        userPreview: UserReviewModel.fromProfile(userProfile),
      );

      final BookReviewModel response;

      if (initial.review == null) {
        response = await reviewsRepository.createBookReview(payload);
      } else {
        await reviewsRepository.updateBookReview(payload);

        response = payload;
      }

      review.updateInitial(reviewText);

      final userReview = Review(
        uid: response.uid,
        description: reviewText,
      );

      initial = initial.copyWith(
        review: userReview,
      );

      await booksRepository.updateBook(initial);

      emitSuccess(initial);
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emitFailure('Щось пішло не так');
    }
  }

  @override
  FutureOr<void> onSubmit() async {
    emitLoading();

    try {
      final payload = initial.copyWith(
        rating: rating.value,
      );

      final request = [
        booksRepository.updateBook(payload),
      ];

      if (initial.review != null) {
        request.add(
          reviewsRepository.updateReviewRating(
            initial.review!.uid,
            rating.value,
          ),
        );
      }

      await Future.wait(request, eagerError: true);

      emitSuccess(payload);
    } catch (e, stackTrace) {
      addError(e, stackTrace);

      emitFailure('Щось пішло не так');
    }
  }
}

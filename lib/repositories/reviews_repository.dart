import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/index.dart';

// TODO(Pasha): Refactor to collection refference
@injectable
class ReviewsRepository {
  final _client = FirebaseFirestore.instance;

  Future<List<BookReviewModel>> getBookReviews(String bookSearchId) async {
    final response = await _client
        .collection('reviews')
        .where('searchId', isEqualTo: bookSearchId)
        .where('description', isNotEqualTo: '')
        .get();

    return response.docs
        .map((doc) => BookReviewModel.fromSnapshot(doc))
        .toList();
  }

  Future<UserReviewModel> createBookReview(BookReviewModel payload) {
    // TODO(Pasha): Finish this
    throw UnimplementedError();
  }

  Future<void> updateBookReview(BookReviewModel payload) {
    return _client
        .collection('reviews')
        .doc(payload.bookSearchId)
        .update(payload.toJson());
  }
}

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
        .where('bookSearchId', isEqualTo: bookSearchId)
        .where('description', isNotEqualTo: '')
        .get();

    return response.docs
        .map((doc) => BookReviewModel.fromSnapshot(doc))
        .toList();
  }

  Future<BookReviewModel> createBookReview(BookReviewModel payload) async {
    final response = await _client.collection('reviews').add(payload.toJson());

    return payload.copyWith(uid: response.id);
  }

  Future<void> updateReviewRating(String uid, double rating) {
    return _client.collection('reviews').doc(uid).update({'rating': rating});
  }

  Future<void> updateBookReview(BookReviewModel payload) {
    return _client
        .collection('reviews')
        .doc(payload.uid)
        .update(payload.toJson());
  }
}

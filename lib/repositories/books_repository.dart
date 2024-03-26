import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/books/models.dart';
import 'package:boo_book/repositories/mixin/firestore_mixin_repo.dart';

@injectable
class BooksRepository extends FirestoreMixinRepo {
  BooksRepository({
    @Named('userUid') required super.userUid,
  });

  Future<List<UserBookModel>> getUncompletedBooks() async {
    final response = await userDoc()
        .collection('books')
        .where('completed', isNotEqualTo: true)
        .get();

    return response.docs.map((doc) => UserBookModel.fromSnapshot(doc)).toList();
  }

  Future<List<UserBookModel>> getUserBooks() async {
    final response = await userDoc().collection('books').get();

    return response.docs.map((doc) => UserBookModel.fromSnapshot(doc)).toList();
  }

  Future<List<CalendarBookModel>> getCalendarData({
    required DateTime from,
    required DateTime to,
  }) async {
    final fromTimestamp = Timestamp.fromDate(from);
    final toTimestamp = Timestamp.fromDate(to);

    final response = await userDoc()
        .collection('calendar')
        .where(
          'date',
          isGreaterThan: fromTimestamp,
          isLessThan: toTimestamp,
        )
        .get();

    return response.docs
        .map((doc) => CalendarBookModel.fromJson(doc.data()))
        .toList();
  }

  Future<UserBookModel> addBookToCollection(
    UserBookModel payload,
  ) async {
    final response = await userDoc().collection('books').add(payload.toJson());

    return payload.copyWith(uid: response.id);
  }

  Future<void> updateBook(UserBookModel payload) {
    return userDoc().collection('books').doc(payload.uid).set(payload.toJson());
  }
}

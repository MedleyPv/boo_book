import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:boo_book/models/books/models.dart';
import 'package:boo_book/repositories/mixin/firestore_mixin_repo.dart';

@injectable
class BooksRepository with FirestoreMixinRepo {
  Future<List<UserBookModel>> getUncompletedBooks(String userUid) async {
    final response = await userDoc(userUid)
        .collection('books')
        .where('completed', isNotEqualTo: true)
        .get();

    return response.docs
        .map((doc) => UserBookModel.fromJson(doc.data()))
        .toList();
  }

  Future<List<UserBookModel>> getUserBooks(String userUid) async {
    final response = await userDoc(userUid).collection('books').get();

    return response.docs
        .map((doc) => UserBookModel.fromJson(doc.data()))
        .toList();
  }

  Future<List<CalendarBookModel>> getCalendarData(
    String userUid, {
    required DateTime from,
    required DateTime to,
  }) async {
    final fromTimestamp = Timestamp.fromDate(from);
    final toTimestamp = Timestamp.fromDate(to);

    final response = await userDoc(userUid)
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
}

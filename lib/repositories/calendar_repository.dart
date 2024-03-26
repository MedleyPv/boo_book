import 'package:boo_book/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'mixin/firestore_mixin_repo.dart';

@injectable
class CalendarRepository extends FirestoreMixinRepo<CalendarBookModel> {
  CalendarRepository({
    @Named('userUid') required super.userUid,
  });

  @override
  CollectionReference<CalendarBookModel> collectionReference() {
    return userDoc().collection('calendar').withConverter(
          fromFirestore: (snapshot, _) =>
              CalendarBookModel.fromSnapshot(snapshot),
          toFirestore: (payload, _) => payload.toJson(),
        );
  }

  Future<List<CalendarBookModel>> getCalendarData({
    required DateTime from,
    required DateTime to,
  }) async {
    final fromTimestamp = Timestamp.fromDate(from);
    final toTimestamp = Timestamp.fromDate(to);

    final response = await collectionReference()
        .where(
          'date',
          isGreaterThan: fromTimestamp,
          isLessThan: toTimestamp,
        )
        .get();

    return response.docs.map((doc) => doc.data()).toList();
  }

  Future<CalendarBookModel> createCalendarRecord(
    CalendarBookModel payload,
  ) async {
    final response = await collectionReference().add(payload);

    return payload.copyWith(bookUid: response.id);
  }

  Future<void> replaceCalendarRecord(
    String uidToReplace,
    CalendarBookModel replaceWith,
  ) async {
    return collectionReference().doc(uidToReplace).set(replaceWith);
  }
}

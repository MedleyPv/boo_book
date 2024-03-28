import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darq/darq.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boo_book/core/index.dart';
import 'package:boo_book/models/index.dart';

part 'models.freezed.dart';
part 'models.c.dart';
part 'models.g.dart';

typedef CalendarBookCollection = Map<DateTime, List<CalendarBookModel>>;

@freezed
class UserBookModel with _$UserBookModel {
  const UserBookModel._();

  const factory UserBookModel({
    @JsonKey(includeToJson: false) @Default('') String uid,
    @Default('') String title,
    @Default('') String author,
    @Default('') String imageUrl,
    @Default(0) int progress,
    @Default(0) int pageCount,
    @Default(0) int readingDuration,
    @Default(0.0) double rating,
    @Default(0.0) double pagesPerSecond,
    @Default(false) bool completed,
    @Default('') String review,
    @Default([]) List<BookReadingRecord> readingRecords,
    DateTime? lastRed,
    DateTime? started,
  }) = _UserBookModel;

  factory UserBookModel.fromSnapshot(
    DocumentSnapshot<DynamicMap> snapshot,
  ) {
    final uid = snapshot.id;
    final json = snapshot.data() ?? <String, dynamic>{};

    return UserBookModel.fromJson(json).copyWith(uid: uid);
  }

  factory UserBookModel.fromJson(Map<String, dynamic> json) =>
      _$UserBookModelFromJson(json);
}

@freezed
class CalendarBookModel with _$CalendarBookModel {
  const CalendarBookModel._();

  const factory CalendarBookModel({
    @JsonKey(includeToJson: false) @Default('') String uid,
    @Default('') String bookUid,
    @Default('') String imageUrl,
    @TimestampSerializer() required DateTime date,
  }) = _CalendarBookModel;

  factory CalendarBookModel.fromSnapshot(
    DocumentSnapshot<DynamicMap> snapshot,
  ) {
    final uid = snapshot.id;
    final json = snapshot.data() ?? <String, dynamic>{};

    return CalendarBookModel.fromJson(json).copyWith(uid: uid);
  }

  factory CalendarBookModel.fromJson(Map<String, dynamic> json) =>
      _$CalendarBookModelFromJson(json);
}

@freezed
class BookSearchModel with _$BookSearchModel {
  const factory BookSearchModel({
    @Default('') String id,
    @Default('') String title,
    @Default([]) List<String> authors,
    @Default('') String publisher,
    @Default('') String language,
    @Default('') String description,
    @Default(0) int pageCount,
    @Default([]) List<String> categories,
    @Default(SearchImageLinksModel()) SearchImageLinksModel imageLinks,
  }) = _BookSearchModel;

  factory BookSearchModel.fromJson(Map<String, dynamic> json) =>
      _$BookSearchModelFromJson(json);
}

@freezed
class SearchImageLinksModel with _$SearchImageLinksModel {
  const factory SearchImageLinksModel({
    @Default('') String smallThumbnail,
    @Default('') String thumbnail,
  }) = _SearchImageLinksModel;

  factory SearchImageLinksModel.fromJson(Map<String, dynamic> json) =>
      _$SearchImageLinksModelFromJson(json);
}

@freezed
class BookReadingRecord with _$BookReadingRecord {
  const BookReadingRecord._();

  const factory BookReadingRecord({
    required int id,
    required DateTime created,
    required int duration,
    required int pageCount,
    required int percentage,
  }) = _BookReadingRecord;

  CalendarBookModel toCalendarModel({
    required String bookUid,
    required String imageUrl,
  }) {
    return CalendarBookModel(
      bookUid: bookUid,
      date: created,
      imageUrl: imageUrl,
    );
  }

  factory BookReadingRecord.fromJson(Map<String, dynamic> json) =>
      _$BookReadingRecordFromJson(json);
}

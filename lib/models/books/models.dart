import 'package:darq/darq.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boo_book/core/index.dart';

part 'models.freezed.dart';
part 'models.c.dart';
part 'models.g.dart';

typedef CalendarBookCollection = Map<DateTime, List<CalendarBookModel>>;

@freezed
class UserBookModel with _$UserBookModel {
  const factory UserBookModel({
    @Default('') String uid,
    @Default('') String title,
    @Default('') String author,
    @Default('') String imageUrl,
    @Default(0) int progress,
    @Default(0.0) double rating,
    @Default(false) bool completed,
    @Default('') String review,
    DateTime? lastRed,
    DateTime? started,
  }) = _UserBookModel;

  factory UserBookModel.fromJson(Map<String, dynamic> json) =>
      _$UserBookModelFromJson(json);
}

@freezed
class CalendarBookModel with _$CalendarBookModel {
  const factory CalendarBookModel({
    @Default('') String uid,
    @Default('') String imageUrl,
    @TimestampSerializer() required DateTime date,
  }) = _CalendarBookModel;

  factory CalendarBookModel.fromJson(Map<String, dynamic> json) =>
      _$CalendarBookModelFromJson(json);
}

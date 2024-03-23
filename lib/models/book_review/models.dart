import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:boo_book/models/index.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class BookReviewModel with _$BookReviewModel {
  const BookReviewModel._();

  const factory BookReviewModel({
    @JsonKey(includeToJson: false) @Default('') String uid,
    @Default('') String bookSearchId,
    @Default(0.0) double rating,
    @Default('') String description,
    DateTime? created,
    @Default(UserReviewModel()) UserReviewModel userPreview,
  }) = _BookReviewModel;

  factory BookReviewModel.fromSnapshot(
    QueryDocumentSnapshot<DynamicMap> snapshot,
  ) {
    final uid = snapshot.id;
    final json = snapshot.data();

    return BookReviewModel.fromJson(json).copyWith(uid: uid);
  }

  factory BookReviewModel.fromJson(Map<String, dynamic> json) =>
      _$BookReviewModelFromJson(json);
}

@freezed
class UserReviewModel with _$UserReviewModel {
  const factory UserReviewModel({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String imageUrl,
  }) = _UserReviewModel;

  factory UserReviewModel.fromJson(Map<String, dynamic> json) =>
      _$UserReviewModelFromJson(json);
}

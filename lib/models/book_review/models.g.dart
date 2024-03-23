// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookReviewModelImpl _$$BookReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookReviewModelImpl(
      uid: json['uid'] as String? ?? '',
      bookSearchId: json['bookSearchId'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      description: json['description'] as String? ?? '',
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      userPreview: json['userPreview'] == null
          ? const UserReviewModel()
          : UserReviewModel.fromJson(
              json['userPreview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookReviewModelImplToJson(
        _$BookReviewModelImpl instance) =>
    <String, dynamic>{
      'bookSearchId': instance.bookSearchId,
      'rating': instance.rating,
      'description': instance.description,
      'created': instance.created?.toIso8601String(),
      'userPreview': instance.userPreview,
    };

_$UserReviewModelImpl _$$UserReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserReviewModelImpl(
      uid: json['uid'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$UserReviewModelImplToJson(
        _$UserReviewModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
    };

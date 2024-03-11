// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      uid: json['uid'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
      description: json['description'] as String? ?? '',
      email: json['email'] as String? ?? '',
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      imageUrl: json['imageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'nickname': instance.nickname,
      'displayName': instance.displayName,
      'description': instance.description,
      'email': instance.email,
      'birthday': instance.birthday?.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };

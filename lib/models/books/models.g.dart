// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookModelImpl _$$UserBookModelImplFromJson(Map<String, dynamic> json) =>
    _$UserBookModelImpl(
      uid: json['uid'] as String? ?? '',
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      progress: json['progress'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      completed: json['completed'] as bool? ?? false,
      lastRed: json['lastRed'] == null
          ? null
          : DateTime.parse(json['lastRed'] as String),
      started: json['started'] == null
          ? null
          : DateTime.parse(json['started'] as String),
    );

Map<String, dynamic> _$$UserBookModelImplToJson(_$UserBookModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'progress': instance.progress,
      'rating': instance.rating,
      'completed': instance.completed,
      'lastRed': instance.lastRed?.toIso8601String(),
      'started': instance.started?.toIso8601String(),
    };

_$CalendarBookModelImpl _$$CalendarBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarBookModelImpl(
      uid: json['uid'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      date: const TimestampSerializer().fromJson(json['date']),
    );

Map<String, dynamic> _$$CalendarBookModelImplToJson(
        _$CalendarBookModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'imageUrl': instance.imageUrl,
      'date': const TimestampSerializer().toJson(instance.date),
    };

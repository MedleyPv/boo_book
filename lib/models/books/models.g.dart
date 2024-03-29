// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBookModelImpl _$$UserBookModelImplFromJson(Map<String, dynamic> json) =>
    _$UserBookModelImpl(
      uid: json['uid'] as String? ?? '',
      searchUid: json['searchUid'] as String? ?? '',
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      progress: json['progress'] as int? ?? 0,
      pageCount: json['pageCount'] as int? ?? 0,
      readingDuration: json['readingDuration'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      pagesPerSecond: (json['pagesPerSecond'] as num?)?.toDouble() ?? 0.0,
      completed: json['completed'] as bool? ?? false,
      review: json['review'] == null
          ? null
          : Review.fromJson(json['review'] as Map<String, dynamic>),
      readingRecords: (json['readingRecords'] as List<dynamic>?)
              ?.map(
                  (e) => BookReadingRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastRed: json['lastRed'] == null
          ? null
          : DateTime.parse(json['lastRed'] as String),
      started: json['started'] == null
          ? null
          : DateTime.parse(json['started'] as String),
    );

Map<String, dynamic> _$$UserBookModelImplToJson(_$UserBookModelImpl instance) =>
    <String, dynamic>{
      'searchUid': instance.searchUid,
      'title': instance.title,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'progress': instance.progress,
      'pageCount': instance.pageCount,
      'readingDuration': instance.readingDuration,
      'rating': instance.rating,
      'pagesPerSecond': instance.pagesPerSecond,
      'completed': instance.completed,
      'review': instance.review?.toJson(),
      'readingRecords': instance.readingRecords.map((e) => e.toJson()).toList(),
      'lastRed': instance.lastRed?.toIso8601String(),
      'started': instance.started?.toIso8601String(),
    };

_$CalendarBookModelImpl _$$CalendarBookModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarBookModelImpl(
      uid: json['uid'] as String? ?? '',
      bookUid: json['bookUid'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      date: const TimestampSerializer().fromJson(json['date']),
    );

Map<String, dynamic> _$$CalendarBookModelImplToJson(
        _$CalendarBookModelImpl instance) =>
    <String, dynamic>{
      'bookUid': instance.bookUid,
      'imageUrl': instance.imageUrl,
      'date': const TimestampSerializer().toJson(instance.date),
    };

_$BookSearchModelImpl _$$BookSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookSearchModelImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      authors: (json['authors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      publisher: json['publisher'] as String? ?? '',
      language: json['language'] as String? ?? '',
      description: json['description'] as String? ?? '',
      pageCount: json['pageCount'] as int? ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      imageLinks: json['imageLinks'] == null
          ? const SearchImageLinksModel()
          : SearchImageLinksModel.fromJson(
              json['imageLinks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookSearchModelImplToJson(
        _$BookSearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'language': instance.language,
      'description': instance.description,
      'pageCount': instance.pageCount,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks.toJson(),
    };

_$SearchImageLinksModelImpl _$$SearchImageLinksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchImageLinksModelImpl(
      smallThumbnail: json['smallThumbnail'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$$SearchImageLinksModelImplToJson(
        _$SearchImageLinksModelImpl instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };

_$BookReadingRecordImpl _$$BookReadingRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$BookReadingRecordImpl(
      id: json['id'] as int,
      created: DateTime.parse(json['created'] as String),
      duration: json['duration'] as int,
      pageCount: json['pageCount'] as int,
      percentage: json['percentage'] as int,
    );

Map<String, dynamic> _$$BookReadingRecordImplToJson(
        _$BookReadingRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'duration': instance.duration,
      'pageCount': instance.pageCount,
      'percentage': instance.percentage,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      uid: json['uid'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'description': instance.description,
    };

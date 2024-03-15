// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBookModel _$UserBookModelFromJson(Map<String, dynamic> json) {
  return _UserBookModel.fromJson(json);
}

/// @nodoc
mixin _$UserBookModel {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  DateTime? get lastRed => throw _privateConstructorUsedError;
  DateTime? get started => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBookModelCopyWith<UserBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookModelCopyWith<$Res> {
  factory $UserBookModelCopyWith(
          UserBookModel value, $Res Function(UserBookModel) then) =
      _$UserBookModelCopyWithImpl<$Res, UserBookModel>;
  @useResult
  $Res call(
      {String uid,
      String title,
      String author,
      String imageUrl,
      int progress,
      double rating,
      bool completed,
      DateTime? lastRed,
      DateTime? started});
}

/// @nodoc
class _$UserBookModelCopyWithImpl<$Res, $Val extends UserBookModel>
    implements $UserBookModelCopyWith<$Res> {
  _$UserBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? progress = null,
    Object? rating = null,
    Object? completed = null,
    Object? lastRed = freezed,
    Object? started = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRed: freezed == lastRed
          ? _value.lastRed
          : lastRed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      started: freezed == started
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBookModelImplCopyWith<$Res>
    implements $UserBookModelCopyWith<$Res> {
  factory _$$UserBookModelImplCopyWith(
          _$UserBookModelImpl value, $Res Function(_$UserBookModelImpl) then) =
      __$$UserBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      String author,
      String imageUrl,
      int progress,
      double rating,
      bool completed,
      DateTime? lastRed,
      DateTime? started});
}

/// @nodoc
class __$$UserBookModelImplCopyWithImpl<$Res>
    extends _$UserBookModelCopyWithImpl<$Res, _$UserBookModelImpl>
    implements _$$UserBookModelImplCopyWith<$Res> {
  __$$UserBookModelImplCopyWithImpl(
      _$UserBookModelImpl _value, $Res Function(_$UserBookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? author = null,
    Object? imageUrl = null,
    Object? progress = null,
    Object? rating = null,
    Object? completed = null,
    Object? lastRed = freezed,
    Object? started = freezed,
  }) {
    return _then(_$UserBookModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      lastRed: freezed == lastRed
          ? _value.lastRed
          : lastRed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      started: freezed == started
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBookModelImpl implements _UserBookModel {
  const _$UserBookModelImpl(
      {this.uid = '',
      this.title = '',
      this.author = '',
      this.imageUrl = '',
      this.progress = 0,
      this.rating = 0.0,
      this.completed = false,
      this.lastRed,
      this.started});

  factory _$UserBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookModelImplFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @JsonKey()
  final int progress;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final bool completed;
  @override
  final DateTime? lastRed;
  @override
  final DateTime? started;

  @override
  String toString() {
    return 'UserBookModel(uid: $uid, title: $title, author: $author, imageUrl: $imageUrl, progress: $progress, rating: $rating, completed: $completed, lastRed: $lastRed, started: $started)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.lastRed, lastRed) || other.lastRed == lastRed) &&
            (identical(other.started, started) || other.started == started));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, title, author, imageUrl,
      progress, rating, completed, lastRed, started);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookModelImplCopyWith<_$UserBookModelImpl> get copyWith =>
      __$$UserBookModelImplCopyWithImpl<_$UserBookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookModelImplToJson(
      this,
    );
  }
}

abstract class _UserBookModel implements UserBookModel {
  const factory _UserBookModel(
      {final String uid,
      final String title,
      final String author,
      final String imageUrl,
      final int progress,
      final double rating,
      final bool completed,
      final DateTime? lastRed,
      final DateTime? started}) = _$UserBookModelImpl;

  factory _UserBookModel.fromJson(Map<String, dynamic> json) =
      _$UserBookModelImpl.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  String get author;
  @override
  String get imageUrl;
  @override
  int get progress;
  @override
  double get rating;
  @override
  bool get completed;
  @override
  DateTime? get lastRed;
  @override
  DateTime? get started;
  @override
  @JsonKey(ignore: true)
  _$$UserBookModelImplCopyWith<_$UserBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarBookModel _$CalendarBookModelFromJson(Map<String, dynamic> json) {
  return _CalendarBookModel.fromJson(json);
}

/// @nodoc
mixin _$CalendarBookModel {
  String get uid => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarBookModelCopyWith<CalendarBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarBookModelCopyWith<$Res> {
  factory $CalendarBookModelCopyWith(
          CalendarBookModel value, $Res Function(CalendarBookModel) then) =
      _$CalendarBookModelCopyWithImpl<$Res, CalendarBookModel>;
  @useResult
  $Res call(
      {String uid, String imageUrl, @TimestampSerializer() DateTime date});
}

/// @nodoc
class _$CalendarBookModelCopyWithImpl<$Res, $Val extends CalendarBookModel>
    implements $CalendarBookModelCopyWith<$Res> {
  _$CalendarBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? imageUrl = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarBookModelImplCopyWith<$Res>
    implements $CalendarBookModelCopyWith<$Res> {
  factory _$$CalendarBookModelImplCopyWith(_$CalendarBookModelImpl value,
          $Res Function(_$CalendarBookModelImpl) then) =
      __$$CalendarBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid, String imageUrl, @TimestampSerializer() DateTime date});
}

/// @nodoc
class __$$CalendarBookModelImplCopyWithImpl<$Res>
    extends _$CalendarBookModelCopyWithImpl<$Res, _$CalendarBookModelImpl>
    implements _$$CalendarBookModelImplCopyWith<$Res> {
  __$$CalendarBookModelImplCopyWithImpl(_$CalendarBookModelImpl _value,
      $Res Function(_$CalendarBookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? imageUrl = null,
    Object? date = null,
  }) {
    return _then(_$CalendarBookModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarBookModelImpl implements _CalendarBookModel {
  const _$CalendarBookModelImpl(
      {this.uid = '',
      this.imageUrl = '',
      @TimestampSerializer() required this.date});

  factory _$CalendarBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarBookModelImplFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @TimestampSerializer()
  final DateTime date;

  @override
  String toString() {
    return 'CalendarBookModel(uid: $uid, imageUrl: $imageUrl, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarBookModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, imageUrl, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarBookModelImplCopyWith<_$CalendarBookModelImpl> get copyWith =>
      __$$CalendarBookModelImplCopyWithImpl<_$CalendarBookModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarBookModelImplToJson(
      this,
    );
  }
}

abstract class _CalendarBookModel implements CalendarBookModel {
  const factory _CalendarBookModel(
          {final String uid,
          final String imageUrl,
          @TimestampSerializer() required final DateTime date}) =
      _$CalendarBookModelImpl;

  factory _CalendarBookModel.fromJson(Map<String, dynamic> json) =
      _$CalendarBookModelImpl.fromJson;

  @override
  String get uid;
  @override
  String get imageUrl;
  @override
  @TimestampSerializer()
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$CalendarBookModelImplCopyWith<_$CalendarBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

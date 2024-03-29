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

BookReviewModel _$BookReviewModelFromJson(Map<String, dynamic> json) {
  return _BookReviewModel.fromJson(json);
}

/// @nodoc
mixin _$BookReviewModel {
  @JsonKey(includeToJson: false)
  String get uid => throw _privateConstructorUsedError;
  String get bookSearchId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  UserReviewModel get userPreview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookReviewModelCopyWith<BookReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookReviewModelCopyWith<$Res> {
  factory $BookReviewModelCopyWith(
          BookReviewModel value, $Res Function(BookReviewModel) then) =
      _$BookReviewModelCopyWithImpl<$Res, BookReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String uid,
      String bookSearchId,
      double rating,
      String description,
      DateTime? created,
      UserReviewModel userPreview});

  $UserReviewModelCopyWith<$Res> get userPreview;
}

/// @nodoc
class _$BookReviewModelCopyWithImpl<$Res, $Val extends BookReviewModel>
    implements $BookReviewModelCopyWith<$Res> {
  _$BookReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? bookSearchId = null,
    Object? rating = null,
    Object? description = null,
    Object? created = freezed,
    Object? userPreview = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bookSearchId: null == bookSearchId
          ? _value.bookSearchId
          : bookSearchId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userPreview: null == userPreview
          ? _value.userPreview
          : userPreview // ignore: cast_nullable_to_non_nullable
              as UserReviewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserReviewModelCopyWith<$Res> get userPreview {
    return $UserReviewModelCopyWith<$Res>(_value.userPreview, (value) {
      return _then(_value.copyWith(userPreview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookReviewModelImplCopyWith<$Res>
    implements $BookReviewModelCopyWith<$Res> {
  factory _$$BookReviewModelImplCopyWith(_$BookReviewModelImpl value,
          $Res Function(_$BookReviewModelImpl) then) =
      __$$BookReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String uid,
      String bookSearchId,
      double rating,
      String description,
      DateTime? created,
      UserReviewModel userPreview});

  @override
  $UserReviewModelCopyWith<$Res> get userPreview;
}

/// @nodoc
class __$$BookReviewModelImplCopyWithImpl<$Res>
    extends _$BookReviewModelCopyWithImpl<$Res, _$BookReviewModelImpl>
    implements _$$BookReviewModelImplCopyWith<$Res> {
  __$$BookReviewModelImplCopyWithImpl(
      _$BookReviewModelImpl _value, $Res Function(_$BookReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? bookSearchId = null,
    Object? rating = null,
    Object? description = null,
    Object? created = freezed,
    Object? userPreview = null,
  }) {
    return _then(_$BookReviewModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bookSearchId: null == bookSearchId
          ? _value.bookSearchId
          : bookSearchId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userPreview: null == userPreview
          ? _value.userPreview
          : userPreview // ignore: cast_nullable_to_non_nullable
              as UserReviewModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookReviewModelImpl extends _BookReviewModel {
  const _$BookReviewModelImpl(
      {@JsonKey(includeToJson: false) this.uid = '',
      this.bookSearchId = '',
      this.rating = 0.0,
      this.description = '',
      this.created,
      this.userPreview = const UserReviewModel()})
      : super._();

  factory _$BookReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookReviewModelImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String uid;
  @override
  @JsonKey()
  final String bookSearchId;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? created;
  @override
  @JsonKey()
  final UserReviewModel userPreview;

  @override
  String toString() {
    return 'BookReviewModel(uid: $uid, bookSearchId: $bookSearchId, rating: $rating, description: $description, created: $created, userPreview: $userPreview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookReviewModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.bookSearchId, bookSearchId) ||
                other.bookSearchId == bookSearchId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.userPreview, userPreview) ||
                other.userPreview == userPreview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, bookSearchId, rating,
      description, created, userPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookReviewModelImplCopyWith<_$BookReviewModelImpl> get copyWith =>
      __$$BookReviewModelImplCopyWithImpl<_$BookReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookReviewModelImplToJson(
      this,
    );
  }
}

abstract class _BookReviewModel extends BookReviewModel {
  const factory _BookReviewModel(
      {@JsonKey(includeToJson: false) final String uid,
      final String bookSearchId,
      final double rating,
      final String description,
      final DateTime? created,
      final UserReviewModel userPreview}) = _$BookReviewModelImpl;
  const _BookReviewModel._() : super._();

  factory _BookReviewModel.fromJson(Map<String, dynamic> json) =
      _$BookReviewModelImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get uid;
  @override
  String get bookSearchId;
  @override
  double get rating;
  @override
  String get description;
  @override
  DateTime? get created;
  @override
  UserReviewModel get userPreview;
  @override
  @JsonKey(ignore: true)
  _$$BookReviewModelImplCopyWith<_$BookReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReviewModel _$UserReviewModelFromJson(Map<String, dynamic> json) {
  return _UserReviewModel.fromJson(json);
}

/// @nodoc
mixin _$UserReviewModel {
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReviewModelCopyWith<UserReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewModelCopyWith<$Res> {
  factory $UserReviewModelCopyWith(
          UserReviewModel value, $Res Function(UserReviewModel) then) =
      _$UserReviewModelCopyWithImpl<$Res, UserReviewModel>;
  @useResult
  $Res call({String uid, String displayName, String imageUrl});
}

/// @nodoc
class _$UserReviewModelCopyWithImpl<$Res, $Val extends UserReviewModel>
    implements $UserReviewModelCopyWith<$Res> {
  _$UserReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserReviewModelImplCopyWith<$Res>
    implements $UserReviewModelCopyWith<$Res> {
  factory _$$UserReviewModelImplCopyWith(_$UserReviewModelImpl value,
          $Res Function(_$UserReviewModelImpl) then) =
      __$$UserReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String displayName, String imageUrl});
}

/// @nodoc
class __$$UserReviewModelImplCopyWithImpl<$Res>
    extends _$UserReviewModelCopyWithImpl<$Res, _$UserReviewModelImpl>
    implements _$$UserReviewModelImplCopyWith<$Res> {
  __$$UserReviewModelImplCopyWithImpl(
      _$UserReviewModelImpl _value, $Res Function(_$UserReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? imageUrl = null,
  }) {
    return _then(_$UserReviewModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserReviewModelImpl extends _UserReviewModel {
  const _$UserReviewModelImpl(
      {this.uid = '', this.displayName = '', this.imageUrl = ''})
      : super._();

  factory _$UserReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserReviewModelImplFromJson(json);

  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString() {
    return 'UserReviewModel(uid: $uid, displayName: $displayName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, displayName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewModelImplCopyWith<_$UserReviewModelImpl> get copyWith =>
      __$$UserReviewModelImplCopyWithImpl<_$UserReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserReviewModelImplToJson(
      this,
    );
  }
}

abstract class _UserReviewModel extends UserReviewModel {
  const factory _UserReviewModel(
      {final String uid,
      final String displayName,
      final String imageUrl}) = _$UserReviewModelImpl;
  const _UserReviewModel._() : super._();

  factory _UserReviewModel.fromJson(Map<String, dynamic> json) =
      _$UserReviewModelImpl.fromJson;

  @override
  String get uid;
  @override
  String get displayName;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserReviewModelImplCopyWith<_$UserReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

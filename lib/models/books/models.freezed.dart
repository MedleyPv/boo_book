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
  @JsonKey(includeToJson: false)
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
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
      {@JsonKey(includeToJson: false) String uid,
      String title,
      String author,
      String imageUrl,
      int progress,
      double rating,
      bool completed,
      String review,
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
    Object? review = null,
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
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(includeToJson: false) String uid,
      String title,
      String author,
      String imageUrl,
      int progress,
      double rating,
      bool completed,
      String review,
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
    Object? review = null,
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
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$UserBookModelImpl extends _UserBookModel {
  const _$UserBookModelImpl(
      {@JsonKey(includeToJson: false) this.uid = '',
      this.title = '',
      this.author = '',
      this.imageUrl = '',
      this.progress = 0,
      this.rating = 0.0,
      this.completed = false,
      this.review = '',
      this.lastRed,
      this.started})
      : super._();

  factory _$UserBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookModelImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
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
  @JsonKey()
  final String review;
  @override
  final DateTime? lastRed;
  @override
  final DateTime? started;

  @override
  String toString() {
    return 'UserBookModel(uid: $uid, title: $title, author: $author, imageUrl: $imageUrl, progress: $progress, rating: $rating, completed: $completed, review: $review, lastRed: $lastRed, started: $started)';
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
            (identical(other.review, review) || other.review == review) &&
            (identical(other.lastRed, lastRed) || other.lastRed == lastRed) &&
            (identical(other.started, started) || other.started == started));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, title, author, imageUrl,
      progress, rating, completed, review, lastRed, started);

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

abstract class _UserBookModel extends UserBookModel {
  const factory _UserBookModel(
      {@JsonKey(includeToJson: false) final String uid,
      final String title,
      final String author,
      final String imageUrl,
      final int progress,
      final double rating,
      final bool completed,
      final String review,
      final DateTime? lastRed,
      final DateTime? started}) = _$UserBookModelImpl;
  const _UserBookModel._() : super._();

  factory _UserBookModel.fromJson(Map<String, dynamic> json) =
      _$UserBookModelImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
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
  String get review;
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
  String get bookUid => throw _privateConstructorUsedError;
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
      {String bookUid, String imageUrl, @TimestampSerializer() DateTime date});
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
    Object? bookUid = null,
    Object? imageUrl = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      bookUid: null == bookUid
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
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
      {String bookUid, String imageUrl, @TimestampSerializer() DateTime date});
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
    Object? bookUid = null,
    Object? imageUrl = null,
    Object? date = null,
  }) {
    return _then(_$CalendarBookModelImpl(
      bookUid: null == bookUid
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
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
      {this.bookUid = '',
      this.imageUrl = '',
      @TimestampSerializer() required this.date});

  factory _$CalendarBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarBookModelImplFromJson(json);

  @override
  @JsonKey()
  final String bookUid;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  @TimestampSerializer()
  final DateTime date;

  @override
  String toString() {
    return 'CalendarBookModel(bookUid: $bookUid, imageUrl: $imageUrl, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarBookModelImpl &&
            (identical(other.bookUid, bookUid) || other.bookUid == bookUid) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bookUid, imageUrl, date);

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
          {final String bookUid,
          final String imageUrl,
          @TimestampSerializer() required final DateTime date}) =
      _$CalendarBookModelImpl;

  factory _CalendarBookModel.fromJson(Map<String, dynamic> json) =
      _$CalendarBookModelImpl.fromJson;

  @override
  String get bookUid;
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

BookSearchModel _$BookSearchModelFromJson(Map<String, dynamic> json) {
  return _BookSearchModel.fromJson(json);
}

/// @nodoc
mixin _$BookSearchModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  SearchImageLinksModel get imageLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookSearchModelCopyWith<BookSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSearchModelCopyWith<$Res> {
  factory $BookSearchModelCopyWith(
          BookSearchModel value, $Res Function(BookSearchModel) then) =
      _$BookSearchModelCopyWithImpl<$Res, BookSearchModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> authors,
      String publisher,
      String language,
      String description,
      int? pageCount,
      List<String> categories,
      SearchImageLinksModel imageLinks});

  $SearchImageLinksModelCopyWith<$Res> get imageLinks;
}

/// @nodoc
class _$BookSearchModelCopyWithImpl<$Res, $Val extends BookSearchModel>
    implements $BookSearchModelCopyWith<$Res> {
  _$BookSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? language = null,
    Object? description = null,
    Object? pageCount = freezed,
    Object? categories = null,
    Object? imageLinks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as SearchImageLinksModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchImageLinksModelCopyWith<$Res> get imageLinks {
    return $SearchImageLinksModelCopyWith<$Res>(_value.imageLinks, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookSearchModelImplCopyWith<$Res>
    implements $BookSearchModelCopyWith<$Res> {
  factory _$$BookSearchModelImplCopyWith(_$BookSearchModelImpl value,
          $Res Function(_$BookSearchModelImpl) then) =
      __$$BookSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> authors,
      String publisher,
      String language,
      String description,
      int? pageCount,
      List<String> categories,
      SearchImageLinksModel imageLinks});

  @override
  $SearchImageLinksModelCopyWith<$Res> get imageLinks;
}

/// @nodoc
class __$$BookSearchModelImplCopyWithImpl<$Res>
    extends _$BookSearchModelCopyWithImpl<$Res, _$BookSearchModelImpl>
    implements _$$BookSearchModelImplCopyWith<$Res> {
  __$$BookSearchModelImplCopyWithImpl(
      _$BookSearchModelImpl _value, $Res Function(_$BookSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? authors = null,
    Object? publisher = null,
    Object? language = null,
    Object? description = null,
    Object? pageCount = freezed,
    Object? categories = null,
    Object? imageLinks = null,
  }) {
    return _then(_$BookSearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageLinks: null == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as SearchImageLinksModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookSearchModelImpl implements _BookSearchModel {
  const _$BookSearchModelImpl(
      {this.id = '',
      this.title = '',
      final List<String> authors = const [],
      this.publisher = '',
      this.language = '',
      this.description = '',
      this.pageCount,
      final List<String> categories = const [],
      this.imageLinks = const SearchImageLinksModel()})
      : _authors = authors,
        _categories = categories;

  factory _$BookSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookSearchModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  final List<String> _authors;
  @override
  @JsonKey()
  List<String> get authors {
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authors);
  }

  @override
  @JsonKey()
  final String publisher;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String description;
  @override
  final int? pageCount;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final SearchImageLinksModel imageLinks;

  @override
  String toString() {
    return 'BookSearchModel(id: $id, title: $title, authors: $authors, publisher: $publisher, language: $language, description: $description, pageCount: $pageCount, categories: $categories, imageLinks: $imageLinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_authors),
      publisher,
      language,
      description,
      pageCount,
      const DeepCollectionEquality().hash(_categories),
      imageLinks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookSearchModelImplCopyWith<_$BookSearchModelImpl> get copyWith =>
      __$$BookSearchModelImplCopyWithImpl<_$BookSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookSearchModelImplToJson(
      this,
    );
  }
}

abstract class _BookSearchModel implements BookSearchModel {
  const factory _BookSearchModel(
      {final String id,
      final String title,
      final List<String> authors,
      final String publisher,
      final String language,
      final String description,
      final int? pageCount,
      final List<String> categories,
      final SearchImageLinksModel imageLinks}) = _$BookSearchModelImpl;

  factory _BookSearchModel.fromJson(Map<String, dynamic> json) =
      _$BookSearchModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get authors;
  @override
  String get publisher;
  @override
  String get language;
  @override
  String get description;
  @override
  int? get pageCount;
  @override
  List<String> get categories;
  @override
  SearchImageLinksModel get imageLinks;
  @override
  @JsonKey(ignore: true)
  _$$BookSearchModelImplCopyWith<_$BookSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchImageLinksModel _$SearchImageLinksModelFromJson(
    Map<String, dynamic> json) {
  return _SearchImageLinksModel.fromJson(json);
}

/// @nodoc
mixin _$SearchImageLinksModel {
  String get smallThumbnail => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchImageLinksModelCopyWith<SearchImageLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageLinksModelCopyWith<$Res> {
  factory $SearchImageLinksModelCopyWith(SearchImageLinksModel value,
          $Res Function(SearchImageLinksModel) then) =
      _$SearchImageLinksModelCopyWithImpl<$Res, SearchImageLinksModel>;
  @useResult
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class _$SearchImageLinksModelCopyWithImpl<$Res,
        $Val extends SearchImageLinksModel>
    implements $SearchImageLinksModelCopyWith<$Res> {
  _$SearchImageLinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: null == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchImageLinksModelImplCopyWith<$Res>
    implements $SearchImageLinksModelCopyWith<$Res> {
  factory _$$SearchImageLinksModelImplCopyWith(
          _$SearchImageLinksModelImpl value,
          $Res Function(_$SearchImageLinksModelImpl) then) =
      __$$SearchImageLinksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String smallThumbnail, String thumbnail});
}

/// @nodoc
class __$$SearchImageLinksModelImplCopyWithImpl<$Res>
    extends _$SearchImageLinksModelCopyWithImpl<$Res,
        _$SearchImageLinksModelImpl>
    implements _$$SearchImageLinksModelImplCopyWith<$Res> {
  __$$SearchImageLinksModelImplCopyWithImpl(_$SearchImageLinksModelImpl _value,
      $Res Function(_$SearchImageLinksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = null,
    Object? thumbnail = null,
  }) {
    return _then(_$SearchImageLinksModelImpl(
      smallThumbnail: null == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchImageLinksModelImpl implements _SearchImageLinksModel {
  const _$SearchImageLinksModelImpl(
      {this.smallThumbnail = '', this.thumbnail = ''});

  factory _$SearchImageLinksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchImageLinksModelImplFromJson(json);

  @override
  @JsonKey()
  final String smallThumbnail;
  @override
  @JsonKey()
  final String thumbnail;

  @override
  String toString() {
    return 'SearchImageLinksModel(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImageLinksModelImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImageLinksModelImplCopyWith<_$SearchImageLinksModelImpl>
      get copyWith => __$$SearchImageLinksModelImplCopyWithImpl<
          _$SearchImageLinksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchImageLinksModelImplToJson(
      this,
    );
  }
}

abstract class _SearchImageLinksModel implements SearchImageLinksModel {
  const factory _SearchImageLinksModel(
      {final String smallThumbnail,
      final String thumbnail}) = _$SearchImageLinksModelImpl;

  factory _SearchImageLinksModel.fromJson(Map<String, dynamic> json) =
      _$SearchImageLinksModelImpl.fromJson;

  @override
  String get smallThumbnail;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$SearchImageLinksModelImplCopyWith<_$SearchImageLinksModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

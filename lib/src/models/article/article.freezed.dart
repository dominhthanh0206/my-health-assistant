// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String? get doctorID => throw _privateConstructorUsedError;
  String? get doctorName => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String? doctorID,
      String? doctorName,
      String? key,
      String? title,
      String? content,
      String? imageUrl,
      String? time,
      String? category});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorID = freezed,
    Object? doctorName = freezed,
    Object? key = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? time = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      doctorID: freezed == doctorID
          ? _value.doctorID
          : doctorID // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? doctorID,
      String? doctorName,
      String? key,
      String? title,
      String? content,
      String? imageUrl,
      String? time,
      String? category});
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorID = freezed,
    Object? doctorName = freezed,
    Object? key = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? time = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Article(
      doctorID: freezed == doctorID
          ? _value.doctorID
          : doctorID // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article implements _Article {
  const _$_Article(
      {this.doctorID,
      this.doctorName,
      this.key,
      this.title,
      this.content,
      this.imageUrl,
      this.time,
      this.category});

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  final String? doctorID;
  @override
  final String? doctorName;
  @override
  final String? key;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? imageUrl;
  @override
  final String? time;
  @override
  final String? category;

  @override
  String toString() {
    return 'Article(doctorID: $doctorID, doctorName: $doctorName, key: $key, title: $title, content: $content, imageUrl: $imageUrl, time: $time, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.doctorID, doctorID) ||
                other.doctorID == doctorID) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doctorID, doctorName, key, title,
      content, imageUrl, time, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {final String? doctorID,
      final String? doctorName,
      final String? key,
      final String? title,
      final String? content,
      final String? imageUrl,
      final String? time,
      final String? category}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  String? get doctorID;
  @override
  String? get doctorName;
  @override
  String? get key;
  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get imageUrl;
  @override
  String? get time;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}

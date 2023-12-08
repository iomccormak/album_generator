// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDto {
  String? get id => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get albumId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @TimestampConverter()
  Timestamp get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res, ReviewDto>;
  @useResult
  $Res call(
      {String? id,
      String authorId,
      int rating,
      String albumId,
      String text,
      @TimestampConverter() Timestamp timeStamp});
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res, $Val extends ReviewDto>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = null,
    Object? rating = null,
    Object? albumId = null,
    Object? text = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDtoImplCopyWith<$Res>
    implements $ReviewDtoCopyWith<$Res> {
  factory _$$ReviewDtoImplCopyWith(
          _$ReviewDtoImpl value, $Res Function(_$ReviewDtoImpl) then) =
      __$$ReviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String authorId,
      int rating,
      String albumId,
      String text,
      @TimestampConverter() Timestamp timeStamp});
}

/// @nodoc
class __$$ReviewDtoImplCopyWithImpl<$Res>
    extends _$ReviewDtoCopyWithImpl<$Res, _$ReviewDtoImpl>
    implements _$$ReviewDtoImplCopyWith<$Res> {
  __$$ReviewDtoImplCopyWithImpl(
      _$ReviewDtoImpl _value, $Res Function(_$ReviewDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = null,
    Object? rating = null,
    Object? albumId = null,
    Object? text = null,
    Object? timeStamp = null,
  }) {
    return _then(_$ReviewDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDtoImpl implements _ReviewDto {
  const _$ReviewDtoImpl(
      {this.id,
      required this.authorId,
      required this.rating,
      required this.albumId,
      this.text = '',
      @TimestampConverter() required this.timeStamp});

  factory _$ReviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String authorId;
  @override
  final int rating;
  @override
  final String albumId;
  @override
  @JsonKey()
  final String text;
  @override
  @TimestampConverter()
  final Timestamp timeStamp;

  @override
  String toString() {
    return 'ReviewDto(id: $id, authorId: $authorId, rating: $rating, albumId: $albumId, text: $text, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorId, rating, albumId, text, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDtoImplCopyWith<_$ReviewDtoImpl> get copyWith =>
      __$$ReviewDtoImplCopyWithImpl<_$ReviewDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDtoImplToJson(
      this,
    );
  }
}

abstract class _ReviewDto implements ReviewDto {
  const factory _ReviewDto(
          {final String? id,
          required final String authorId,
          required final int rating,
          required final String albumId,
          final String text,
          @TimestampConverter() required final Timestamp timeStamp}) =
      _$ReviewDtoImpl;

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$ReviewDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String get authorId;
  @override
  int get rating;
  @override
  String get albumId;
  @override
  String get text;
  @override
  @TimestampConverter()
  Timestamp get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDtoImplCopyWith<_$ReviewDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

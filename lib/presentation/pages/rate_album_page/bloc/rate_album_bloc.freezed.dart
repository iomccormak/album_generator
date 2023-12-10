// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_album_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateAlbumEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? description, double rating, String authorId, String albumId)
        rateAlbum,
    required TResult Function() didNotListen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult? Function()? didNotListen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult Function()? didNotListen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateAlbum value) rateAlbum,
    required TResult Function(DidNotListen value) didNotListen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RateAlbum value)? rateAlbum,
    TResult? Function(DidNotListen value)? didNotListen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateAlbum value)? rateAlbum,
    TResult Function(DidNotListen value)? didNotListen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateAlbumEventCopyWith<$Res> {
  factory $RateAlbumEventCopyWith(
          RateAlbumEvent value, $Res Function(RateAlbumEvent) then) =
      _$RateAlbumEventCopyWithImpl<$Res, RateAlbumEvent>;
}

/// @nodoc
class _$RateAlbumEventCopyWithImpl<$Res, $Val extends RateAlbumEvent>
    implements $RateAlbumEventCopyWith<$Res> {
  _$RateAlbumEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RateAlbumImplCopyWith<$Res> {
  factory _$$RateAlbumImplCopyWith(
          _$RateAlbumImpl value, $Res Function(_$RateAlbumImpl) then) =
      __$$RateAlbumImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? description, double rating, String authorId, String albumId});
}

/// @nodoc
class __$$RateAlbumImplCopyWithImpl<$Res>
    extends _$RateAlbumEventCopyWithImpl<$Res, _$RateAlbumImpl>
    implements _$$RateAlbumImplCopyWith<$Res> {
  __$$RateAlbumImplCopyWithImpl(
      _$RateAlbumImpl _value, $Res Function(_$RateAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? rating = null,
    Object? authorId = null,
    Object? albumId = null,
  }) {
    return _then(_$RateAlbumImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateAlbumImpl implements RateAlbum {
  const _$RateAlbumImpl(
      {this.description,
      required this.rating,
      required this.authorId,
      required this.albumId});

  @override
  final String? description;
  @override
  final double rating;
  @override
  final String authorId;
  @override
  final String albumId;

  @override
  String toString() {
    return 'RateAlbumEvent.rateAlbum(description: $description, rating: $rating, authorId: $authorId, albumId: $albumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateAlbumImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.albumId, albumId) || other.albumId == albumId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, rating, authorId, albumId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateAlbumImplCopyWith<_$RateAlbumImpl> get copyWith =>
      __$$RateAlbumImplCopyWithImpl<_$RateAlbumImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? description, double rating, String authorId, String albumId)
        rateAlbum,
    required TResult Function() didNotListen,
  }) {
    return rateAlbum(description, rating, authorId, albumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult? Function()? didNotListen,
  }) {
    return rateAlbum?.call(description, rating, authorId, albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult Function()? didNotListen,
    required TResult orElse(),
  }) {
    if (rateAlbum != null) {
      return rateAlbum(description, rating, authorId, albumId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateAlbum value) rateAlbum,
    required TResult Function(DidNotListen value) didNotListen,
  }) {
    return rateAlbum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RateAlbum value)? rateAlbum,
    TResult? Function(DidNotListen value)? didNotListen,
  }) {
    return rateAlbum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateAlbum value)? rateAlbum,
    TResult Function(DidNotListen value)? didNotListen,
    required TResult orElse(),
  }) {
    if (rateAlbum != null) {
      return rateAlbum(this);
    }
    return orElse();
  }
}

abstract class RateAlbum implements RateAlbumEvent {
  const factory RateAlbum(
      {final String? description,
      required final double rating,
      required final String authorId,
      required final String albumId}) = _$RateAlbumImpl;

  String? get description;
  double get rating;
  String get authorId;
  String get albumId;
  @JsonKey(ignore: true)
  _$$RateAlbumImplCopyWith<_$RateAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DidNotListenImplCopyWith<$Res> {
  factory _$$DidNotListenImplCopyWith(
          _$DidNotListenImpl value, $Res Function(_$DidNotListenImpl) then) =
      __$$DidNotListenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DidNotListenImplCopyWithImpl<$Res>
    extends _$RateAlbumEventCopyWithImpl<$Res, _$DidNotListenImpl>
    implements _$$DidNotListenImplCopyWith<$Res> {
  __$$DidNotListenImplCopyWithImpl(
      _$DidNotListenImpl _value, $Res Function(_$DidNotListenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DidNotListenImpl implements DidNotListen {
  const _$DidNotListenImpl();

  @override
  String toString() {
    return 'RateAlbumEvent.didNotListen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DidNotListenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? description, double rating, String authorId, String albumId)
        rateAlbum,
    required TResult Function() didNotListen,
  }) {
    return didNotListen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult? Function()? didNotListen,
  }) {
    return didNotListen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, double rating, String authorId,
            String albumId)?
        rateAlbum,
    TResult Function()? didNotListen,
    required TResult orElse(),
  }) {
    if (didNotListen != null) {
      return didNotListen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RateAlbum value) rateAlbum,
    required TResult Function(DidNotListen value) didNotListen,
  }) {
    return didNotListen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RateAlbum value)? rateAlbum,
    TResult? Function(DidNotListen value)? didNotListen,
  }) {
    return didNotListen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RateAlbum value)? rateAlbum,
    TResult Function(DidNotListen value)? didNotListen,
    required TResult orElse(),
  }) {
    if (didNotListen != null) {
      return didNotListen(this);
    }
    return orElse();
  }
}

abstract class DidNotListen implements RateAlbumEvent {
  const factory DidNotListen() = _$DidNotListenImpl;
}

/// @nodoc
mixin _$RateAlbumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateAlbumStateCopyWith<$Res> {
  factory $RateAlbumStateCopyWith(
          RateAlbumState value, $Res Function(RateAlbumState) then) =
      _$RateAlbumStateCopyWithImpl<$Res, RateAlbumState>;
}

/// @nodoc
class _$RateAlbumStateCopyWithImpl<$Res, $Val extends RateAlbumState>
    implements $RateAlbumStateCopyWith<$Res> {
  _$RateAlbumStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RateAlbumStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RateAlbumState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RateAlbumState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RateAlbumStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RateAlbumState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RateAlbumState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
mixin _$RateAlbumCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNextAlbum,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNextAlbum,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNextAlbum,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToNextAlbum value) navToNextAlbum,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNextAlbum value)? navToNextAlbum,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNextAlbum value)? navToNextAlbum,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateAlbumCommandCopyWith<$Res> {
  factory $RateAlbumCommandCopyWith(
          RateAlbumCommand value, $Res Function(RateAlbumCommand) then) =
      _$RateAlbumCommandCopyWithImpl<$Res, RateAlbumCommand>;
}

/// @nodoc
class _$RateAlbumCommandCopyWithImpl<$Res, $Val extends RateAlbumCommand>
    implements $RateAlbumCommandCopyWith<$Res> {
  _$RateAlbumCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToNextAlbumImplCopyWith<$Res> {
  factory _$$NavToNextAlbumImplCopyWith(_$NavToNextAlbumImpl value,
          $Res Function(_$NavToNextAlbumImpl) then) =
      __$$NavToNextAlbumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToNextAlbumImplCopyWithImpl<$Res>
    extends _$RateAlbumCommandCopyWithImpl<$Res, _$NavToNextAlbumImpl>
    implements _$$NavToNextAlbumImplCopyWith<$Res> {
  __$$NavToNextAlbumImplCopyWithImpl(
      _$NavToNextAlbumImpl _value, $Res Function(_$NavToNextAlbumImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToNextAlbumImpl implements NavToNextAlbum {
  const _$NavToNextAlbumImpl();

  @override
  String toString() {
    return 'RateAlbumCommand.navToNextAlbum()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToNextAlbumImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNextAlbum,
    required TResult Function(String error) error,
  }) {
    return navToNextAlbum();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNextAlbum,
    TResult? Function(String error)? error,
  }) {
    return navToNextAlbum?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNextAlbum,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (navToNextAlbum != null) {
      return navToNextAlbum();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToNextAlbum value) navToNextAlbum,
    required TResult Function(Error value) error,
  }) {
    return navToNextAlbum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNextAlbum value)? navToNextAlbum,
    TResult? Function(Error value)? error,
  }) {
    return navToNextAlbum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNextAlbum value)? navToNextAlbum,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToNextAlbum != null) {
      return navToNextAlbum(this);
    }
    return orElse();
  }
}

abstract class NavToNextAlbum implements RateAlbumCommand {
  const factory NavToNextAlbum() = _$NavToNextAlbumImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RateAlbumCommandCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'RateAlbumCommand.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToNextAlbum,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToNextAlbum,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToNextAlbum,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToNextAlbum value) navToNextAlbum,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToNextAlbum value)? navToNextAlbum,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToNextAlbum value)? navToNextAlbum,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements RateAlbumCommand {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

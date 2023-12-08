// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() save,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? save,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Save value) save,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Save value)? save,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements MainEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveImpl implements Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'MainEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements MainEvent {
  const factory Save() = _$SaveImpl;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User currentUser, Album album) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User currentUser, Album album)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User currentUser, Album album)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainState.initial()';
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
    required TResult Function(User currentUser, Album album) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User currentUser, Album album)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User currentUser, Album album)? loaded,
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
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MainState {
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
    extends _$MainStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'MainState.loading()';
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
    required TResult Function(User currentUser, Album album) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User currentUser, Album album)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User currentUser, Album album)? loaded,
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
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MainState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User currentUser, Album album});

  $UserCopyWith<$Res> get currentUser;
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = null,
    Object? album = null,
  }) {
    return _then(_$LoadedImpl(
      null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User,
      null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.currentUser, this.album);

  @override
  final User currentUser;
  @override
  final Album album;

  @override
  String toString() {
    return 'MainState.loaded(currentUser: $currentUser, album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.album, album) || other.album == album));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser, album);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User currentUser, Album album) loaded,
  }) {
    return loaded(currentUser, album);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User currentUser, Album album)? loaded,
  }) {
    return loaded?.call(currentUser, album);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User currentUser, Album album)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentUser, album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MainState {
  const factory Loaded(final User currentUser, final Album album) =
      _$LoadedImpl;

  User get currentUser;
  Album get album;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToProfile,
    required TResult Function() navToSettings,
    required TResult Function() navToNext,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToProfile,
    TResult? Function()? navToSettings,
    TResult? Function()? navToNext,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToProfile,
    TResult Function()? navToSettings,
    TResult Function()? navToNext,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToProfile value) navToProfile,
    required TResult Function(NavToSettings value) navToSettings,
    required TResult Function(NavToNext value) navToNext,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToProfile value)? navToProfile,
    TResult? Function(NavToSettings value)? navToSettings,
    TResult? Function(NavToNext value)? navToNext,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToProfile value)? navToProfile,
    TResult Function(NavToSettings value)? navToSettings,
    TResult Function(NavToNext value)? navToNext,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCommandCopyWith<$Res> {
  factory $MainCommandCopyWith(
          MainCommand value, $Res Function(MainCommand) then) =
      _$MainCommandCopyWithImpl<$Res, MainCommand>;
}

/// @nodoc
class _$MainCommandCopyWithImpl<$Res, $Val extends MainCommand>
    implements $MainCommandCopyWith<$Res> {
  _$MainCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToProfileImplCopyWith<$Res> {
  factory _$$NavToProfileImplCopyWith(
          _$NavToProfileImpl value, $Res Function(_$NavToProfileImpl) then) =
      __$$NavToProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToProfileImplCopyWithImpl<$Res>
    extends _$MainCommandCopyWithImpl<$Res, _$NavToProfileImpl>
    implements _$$NavToProfileImplCopyWith<$Res> {
  __$$NavToProfileImplCopyWithImpl(
      _$NavToProfileImpl _value, $Res Function(_$NavToProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToProfileImpl implements NavToProfile {
  const _$NavToProfileImpl();

  @override
  String toString() {
    return 'MainCommand.navToProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToProfile,
    required TResult Function() navToSettings,
    required TResult Function() navToNext,
    required TResult Function() error,
  }) {
    return navToProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToProfile,
    TResult? Function()? navToSettings,
    TResult? Function()? navToNext,
    TResult? Function()? error,
  }) {
    return navToProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToProfile,
    TResult Function()? navToSettings,
    TResult Function()? navToNext,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navToProfile != null) {
      return navToProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToProfile value) navToProfile,
    required TResult Function(NavToSettings value) navToSettings,
    required TResult Function(NavToNext value) navToNext,
    required TResult Function(Error value) error,
  }) {
    return navToProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToProfile value)? navToProfile,
    TResult? Function(NavToSettings value)? navToSettings,
    TResult? Function(NavToNext value)? navToNext,
    TResult? Function(Error value)? error,
  }) {
    return navToProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToProfile value)? navToProfile,
    TResult Function(NavToSettings value)? navToSettings,
    TResult Function(NavToNext value)? navToNext,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToProfile != null) {
      return navToProfile(this);
    }
    return orElse();
  }
}

abstract class NavToProfile implements MainCommand {
  const factory NavToProfile() = _$NavToProfileImpl;
}

/// @nodoc
abstract class _$$NavToSettingsImplCopyWith<$Res> {
  factory _$$NavToSettingsImplCopyWith(
          _$NavToSettingsImpl value, $Res Function(_$NavToSettingsImpl) then) =
      __$$NavToSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToSettingsImplCopyWithImpl<$Res>
    extends _$MainCommandCopyWithImpl<$Res, _$NavToSettingsImpl>
    implements _$$NavToSettingsImplCopyWith<$Res> {
  __$$NavToSettingsImplCopyWithImpl(
      _$NavToSettingsImpl _value, $Res Function(_$NavToSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToSettingsImpl implements NavToSettings {
  const _$NavToSettingsImpl();

  @override
  String toString() {
    return 'MainCommand.navToSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToProfile,
    required TResult Function() navToSettings,
    required TResult Function() navToNext,
    required TResult Function() error,
  }) {
    return navToSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToProfile,
    TResult? Function()? navToSettings,
    TResult? Function()? navToNext,
    TResult? Function()? error,
  }) {
    return navToSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToProfile,
    TResult Function()? navToSettings,
    TResult Function()? navToNext,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navToSettings != null) {
      return navToSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToProfile value) navToProfile,
    required TResult Function(NavToSettings value) navToSettings,
    required TResult Function(NavToNext value) navToNext,
    required TResult Function(Error value) error,
  }) {
    return navToSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToProfile value)? navToProfile,
    TResult? Function(NavToSettings value)? navToSettings,
    TResult? Function(NavToNext value)? navToNext,
    TResult? Function(Error value)? error,
  }) {
    return navToSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToProfile value)? navToProfile,
    TResult Function(NavToSettings value)? navToSettings,
    TResult Function(NavToNext value)? navToNext,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToSettings != null) {
      return navToSettings(this);
    }
    return orElse();
  }
}

abstract class NavToSettings implements MainCommand {
  const factory NavToSettings() = _$NavToSettingsImpl;
}

/// @nodoc
abstract class _$$NavToNextImplCopyWith<$Res> {
  factory _$$NavToNextImplCopyWith(
          _$NavToNextImpl value, $Res Function(_$NavToNextImpl) then) =
      __$$NavToNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToNextImplCopyWithImpl<$Res>
    extends _$MainCommandCopyWithImpl<$Res, _$NavToNextImpl>
    implements _$$NavToNextImplCopyWith<$Res> {
  __$$NavToNextImplCopyWithImpl(
      _$NavToNextImpl _value, $Res Function(_$NavToNextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToNextImpl implements NavToNext {
  const _$NavToNextImpl();

  @override
  String toString() {
    return 'MainCommand.navToNext()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToProfile,
    required TResult Function() navToSettings,
    required TResult Function() navToNext,
    required TResult Function() error,
  }) {
    return navToNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToProfile,
    TResult? Function()? navToSettings,
    TResult? Function()? navToNext,
    TResult? Function()? error,
  }) {
    return navToNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToProfile,
    TResult Function()? navToSettings,
    TResult Function()? navToNext,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (navToNext != null) {
      return navToNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToProfile value) navToProfile,
    required TResult Function(NavToSettings value) navToSettings,
    required TResult Function(NavToNext value) navToNext,
    required TResult Function(Error value) error,
  }) {
    return navToNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToProfile value)? navToProfile,
    TResult? Function(NavToSettings value)? navToSettings,
    TResult? Function(NavToNext value)? navToNext,
    TResult? Function(Error value)? error,
  }) {
    return navToNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToProfile value)? navToProfile,
    TResult Function(NavToSettings value)? navToSettings,
    TResult Function(NavToNext value)? navToNext,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToNext != null) {
      return navToNext(this);
    }
    return orElse();
  }
}

abstract class NavToNext implements MainCommand {
  const factory NavToNext() = _$NavToNextImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MainCommandCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'MainCommand.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToProfile,
    required TResult Function() navToSettings,
    required TResult Function() navToNext,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToProfile,
    TResult? Function()? navToSettings,
    TResult? Function()? navToNext,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToProfile,
    TResult Function()? navToSettings,
    TResult Function()? navToNext,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToProfile value) navToProfile,
    required TResult Function(NavToSettings value) navToSettings,
    required TResult Function(NavToNext value) navToNext,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToProfile value)? navToProfile,
    TResult? Function(NavToSettings value)? navToSettings,
    TResult? Function(NavToNext value)? navToNext,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToProfile value)? navToProfile,
    TResult Function(NavToSettings value)? navToSettings,
    TResult Function(NavToNext value)? navToNext,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MainCommand {
  const factory Error() = _$ErrorImpl;
}

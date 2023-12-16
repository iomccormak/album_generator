// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInClicked value) signInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInClicked value)? signInClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInClicked value)? signInClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInClickedImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$SignInClickedImplCopyWith(
          _$SignInClickedImpl value, $Res Function(_$SignInClickedImpl) then) =
      __$$SignInClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInClickedImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInClickedImpl>
    implements _$$SignInClickedImplCopyWith<$Res> {
  __$$SignInClickedImplCopyWithImpl(
      _$SignInClickedImpl _value, $Res Function(_$SignInClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInClickedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInClickedImpl implements SignInClicked {
  const _$SignInClickedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signInClicked(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInClickedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInClickedImplCopyWith<_$SignInClickedImpl> get copyWith =>
      __$$SignInClickedImplCopyWithImpl<_$SignInClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInClicked,
  }) {
    return signInClicked(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInClicked,
  }) {
    return signInClicked?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInClicked,
    required TResult orElse(),
  }) {
    if (signInClicked != null) {
      return signInClicked(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInClicked value) signInClicked,
  }) {
    return signInClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInClicked value)? signInClicked,
  }) {
    return signInClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInClicked value)? signInClicked,
    required TResult orElse(),
  }) {
    if (signInClicked != null) {
      return signInClicked(this);
    }
    return orElse();
  }
}

abstract class SignInClicked implements SignInEvent {
  const factory SignInClicked(
      {required final String email,
      required final String password}) = _$SignInClickedImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInClickedImplCopyWith<_$SignInClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
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
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

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
    extends _$SignInStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SignInState.initial()';
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

abstract class Initial implements SignInState {
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
    extends _$SignInStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SignInState.loading()';
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

abstract class Loading implements SignInState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
mixin _$SignInCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function(AppException error) validateEnteredValues,
    required TResult Function(AppException error) validateFirebaseAuth,
    required TResult Function(AppException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function(AppException error)? validateEnteredValues,
    TResult? Function(AppException error)? validateFirebaseAuth,
    TResult? Function(AppException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function(AppException error)? validateEnteredValues,
    TResult Function(AppException error)? validateFirebaseAuth,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(ValidateEnteredValues value)
        validateEnteredValues,
    required TResult Function(ValidateFirebaseAuth value) validateFirebaseAuth,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult? Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCommandCopyWith<$Res> {
  factory $SignInCommandCopyWith(
          SignInCommand value, $Res Function(SignInCommand) then) =
      _$SignInCommandCopyWithImpl<$Res, SignInCommand>;
}

/// @nodoc
class _$SignInCommandCopyWithImpl<$Res, $Val extends SignInCommand>
    implements $SignInCommandCopyWith<$Res> {
  _$SignInCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavToHomePageImplCopyWith<$Res> {
  factory _$$NavToHomePageImplCopyWith(
          _$NavToHomePageImpl value, $Res Function(_$NavToHomePageImpl) then) =
      __$$NavToHomePageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavToHomePageImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$NavToHomePageImpl>
    implements _$$NavToHomePageImplCopyWith<$Res> {
  __$$NavToHomePageImplCopyWithImpl(
      _$NavToHomePageImpl _value, $Res Function(_$NavToHomePageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavToHomePageImpl implements NavToHomePage {
  const _$NavToHomePageImpl();

  @override
  String toString() {
    return 'SignInCommand.navToHomePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavToHomePageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function(AppException error) validateEnteredValues,
    required TResult Function(AppException error) validateFirebaseAuth,
    required TResult Function(AppException error) error,
  }) {
    return navToHomePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function(AppException error)? validateEnteredValues,
    TResult? Function(AppException error)? validateFirebaseAuth,
    TResult? Function(AppException error)? error,
  }) {
    return navToHomePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function(AppException error)? validateEnteredValues,
    TResult Function(AppException error)? validateFirebaseAuth,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (navToHomePage != null) {
      return navToHomePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(ValidateEnteredValues value)
        validateEnteredValues,
    required TResult Function(ValidateFirebaseAuth value) validateFirebaseAuth,
    required TResult Function(Error value) error,
  }) {
    return navToHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult? Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult? Function(Error value)? error,
  }) {
    return navToHomePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (navToHomePage != null) {
      return navToHomePage(this);
    }
    return orElse();
  }
}

abstract class NavToHomePage implements SignInCommand {
  const factory NavToHomePage() = _$NavToHomePageImpl;
}

/// @nodoc
abstract class _$$ValidateEnteredValuesImplCopyWith<$Res> {
  factory _$$ValidateEnteredValuesImplCopyWith(
          _$ValidateEnteredValuesImpl value,
          $Res Function(_$ValidateEnteredValuesImpl) then) =
      __$$ValidateEnteredValuesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$ValidateEnteredValuesImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$ValidateEnteredValuesImpl>
    implements _$$ValidateEnteredValuesImplCopyWith<$Res> {
  __$$ValidateEnteredValuesImplCopyWithImpl(_$ValidateEnteredValuesImpl _value,
      $Res Function(_$ValidateEnteredValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ValidateEnteredValuesImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$ValidateEnteredValuesImpl implements ValidateEnteredValues {
  const _$ValidateEnteredValuesImpl({required this.error});

  @override
  final AppException error;

  @override
  String toString() {
    return 'SignInCommand.validateEnteredValues(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEnteredValuesImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateEnteredValuesImplCopyWith<_$ValidateEnteredValuesImpl>
      get copyWith => __$$ValidateEnteredValuesImplCopyWithImpl<
          _$ValidateEnteredValuesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function(AppException error) validateEnteredValues,
    required TResult Function(AppException error) validateFirebaseAuth,
    required TResult Function(AppException error) error,
  }) {
    return validateEnteredValues(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function(AppException error)? validateEnteredValues,
    TResult? Function(AppException error)? validateFirebaseAuth,
    TResult? Function(AppException error)? error,
  }) {
    return validateEnteredValues?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function(AppException error)? validateEnteredValues,
    TResult Function(AppException error)? validateFirebaseAuth,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (validateEnteredValues != null) {
      return validateEnteredValues(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(ValidateEnteredValues value)
        validateEnteredValues,
    required TResult Function(ValidateFirebaseAuth value) validateFirebaseAuth,
    required TResult Function(Error value) error,
  }) {
    return validateEnteredValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult? Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult? Function(Error value)? error,
  }) {
    return validateEnteredValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (validateEnteredValues != null) {
      return validateEnteredValues(this);
    }
    return orElse();
  }
}

abstract class ValidateEnteredValues implements SignInCommand {
  const factory ValidateEnteredValues({required final AppException error}) =
      _$ValidateEnteredValuesImpl;

  AppException get error;
  @JsonKey(ignore: true)
  _$$ValidateEnteredValuesImplCopyWith<_$ValidateEnteredValuesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateFirebaseAuthImplCopyWith<$Res> {
  factory _$$ValidateFirebaseAuthImplCopyWith(_$ValidateFirebaseAuthImpl value,
          $Res Function(_$ValidateFirebaseAuthImpl) then) =
      __$$ValidateFirebaseAuthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$ValidateFirebaseAuthImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$ValidateFirebaseAuthImpl>
    implements _$$ValidateFirebaseAuthImplCopyWith<$Res> {
  __$$ValidateFirebaseAuthImplCopyWithImpl(_$ValidateFirebaseAuthImpl _value,
      $Res Function(_$ValidateFirebaseAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ValidateFirebaseAuthImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$ValidateFirebaseAuthImpl implements ValidateFirebaseAuth {
  const _$ValidateFirebaseAuthImpl({required this.error});

  @override
  final AppException error;

  @override
  String toString() {
    return 'SignInCommand.validateFirebaseAuth(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateFirebaseAuthImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateFirebaseAuthImplCopyWith<_$ValidateFirebaseAuthImpl>
      get copyWith =>
          __$$ValidateFirebaseAuthImplCopyWithImpl<_$ValidateFirebaseAuthImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navToHomePage,
    required TResult Function(AppException error) validateEnteredValues,
    required TResult Function(AppException error) validateFirebaseAuth,
    required TResult Function(AppException error) error,
  }) {
    return validateFirebaseAuth(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function(AppException error)? validateEnteredValues,
    TResult? Function(AppException error)? validateFirebaseAuth,
    TResult? Function(AppException error)? error,
  }) {
    return validateFirebaseAuth?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function(AppException error)? validateEnteredValues,
    TResult Function(AppException error)? validateFirebaseAuth,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (validateFirebaseAuth != null) {
      return validateFirebaseAuth(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(ValidateEnteredValues value)
        validateEnteredValues,
    required TResult Function(ValidateFirebaseAuth value) validateFirebaseAuth,
    required TResult Function(Error value) error,
  }) {
    return validateFirebaseAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult? Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult? Function(Error value)? error,
  }) {
    return validateFirebaseAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (validateFirebaseAuth != null) {
      return validateFirebaseAuth(this);
    }
    return orElse();
  }
}

abstract class ValidateFirebaseAuth implements SignInCommand {
  const factory ValidateFirebaseAuth({required final AppException error}) =
      _$ValidateFirebaseAuthImpl;

  AppException get error;
  @JsonKey(ignore: true)
  _$$ValidateFirebaseAuthImplCopyWith<_$ValidateFirebaseAuthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignInCommandCopyWithImpl<$Res, _$ErrorImpl>
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
              as AppException,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final AppException error;

  @override
  String toString() {
    return 'SignInCommand.error(error: $error)';
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
    required TResult Function() navToHomePage,
    required TResult Function(AppException error) validateEnteredValues,
    required TResult Function(AppException error) validateFirebaseAuth,
    required TResult Function(AppException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navToHomePage,
    TResult? Function(AppException error)? validateEnteredValues,
    TResult? Function(AppException error)? validateFirebaseAuth,
    TResult? Function(AppException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navToHomePage,
    TResult Function(AppException error)? validateEnteredValues,
    TResult Function(AppException error)? validateFirebaseAuth,
    TResult Function(AppException error)? error,
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
    required TResult Function(NavToHomePage value) navToHomePage,
    required TResult Function(ValidateEnteredValues value)
        validateEnteredValues,
    required TResult Function(ValidateFirebaseAuth value) validateFirebaseAuth,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavToHomePage value)? navToHomePage,
    TResult? Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult? Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavToHomePage value)? navToHomePage,
    TResult Function(ValidateEnteredValues value)? validateEnteredValues,
    TResult Function(ValidateFirebaseAuth value)? validateFirebaseAuth,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignInCommand {
  const factory Error({required final AppException error}) = _$ErrorImpl;

  AppException get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

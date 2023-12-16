// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpEvent {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String email, String password,
            String confirmPassword)
        signUpClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String email, String password,
            String confirmPassword)?
        signUpClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String email, String password,
            String confirmPassword)?
        signUpClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpClicked value) signUpClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpClicked value)? signUpClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpClicked value)? signUpClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call(
      {String username, String email, String password, String confirmPassword});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpClickedImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpClickedImplCopyWith(
          _$SignUpClickedImpl value, $Res Function(_$SignUpClickedImpl) then) =
      __$$SignUpClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username, String email, String password, String confirmPassword});
}

/// @nodoc
class __$$SignUpClickedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpClickedImpl>
    implements _$$SignUpClickedImplCopyWith<$Res> {
  __$$SignUpClickedImplCopyWithImpl(
      _$SignUpClickedImpl _value, $Res Function(_$SignUpClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$SignUpClickedImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpClickedImpl implements SignUpClicked {
  const _$SignUpClickedImpl(
      {required this.username,
      required this.email,
      required this.password,
      required this.confirmPassword});

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpEvent.signUpClicked(username: $username, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpClickedImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpClickedImplCopyWith<_$SignUpClickedImpl> get copyWith =>
      __$$SignUpClickedImplCopyWithImpl<_$SignUpClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String email, String password,
            String confirmPassword)
        signUpClicked,
  }) {
    return signUpClicked(username, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String email, String password,
            String confirmPassword)?
        signUpClicked,
  }) {
    return signUpClicked?.call(username, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String email, String password,
            String confirmPassword)?
        signUpClicked,
    required TResult orElse(),
  }) {
    if (signUpClicked != null) {
      return signUpClicked(username, email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpClicked value) signUpClicked,
  }) {
    return signUpClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpClicked value)? signUpClicked,
  }) {
    return signUpClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpClicked value)? signUpClicked,
    required TResult orElse(),
  }) {
    if (signUpClicked != null) {
      return signUpClicked(this);
    }
    return orElse();
  }
}

abstract class SignUpClicked implements SignUpEvent {
  const factory SignUpClicked(
      {required final String username,
      required final String email,
      required final String password,
      required final String confirmPassword}) = _$SignUpClickedImpl;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$SignUpClickedImplCopyWith<_$SignUpClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
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
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

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
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SignUpState.initial()';
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

abstract class Initial implements SignUpState {
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
    extends _$SignUpStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SignUpState.loading()';
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

abstract class Loading implements SignUpState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
mixin _$SignUpCommand {
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
abstract class $SignUpCommandCopyWith<$Res> {
  factory $SignUpCommandCopyWith(
          SignUpCommand value, $Res Function(SignUpCommand) then) =
      _$SignUpCommandCopyWithImpl<$Res, SignUpCommand>;
}

/// @nodoc
class _$SignUpCommandCopyWithImpl<$Res, $Val extends SignUpCommand>
    implements $SignUpCommandCopyWith<$Res> {
  _$SignUpCommandCopyWithImpl(this._value, this._then);

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
    extends _$SignUpCommandCopyWithImpl<$Res, _$NavToHomePageImpl>
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
    return 'SignUpCommand.navToHomePage()';
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

abstract class NavToHomePage implements SignUpCommand {
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
    extends _$SignUpCommandCopyWithImpl<$Res, _$ValidateEnteredValuesImpl>
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
    return 'SignUpCommand.validateEnteredValues(error: $error)';
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

abstract class ValidateEnteredValues implements SignUpCommand {
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
    extends _$SignUpCommandCopyWithImpl<$Res, _$ValidateFirebaseAuthImpl>
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
    return 'SignUpCommand.validateFirebaseAuth(error: $error)';
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

abstract class ValidateFirebaseAuth implements SignUpCommand {
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
    extends _$SignUpCommandCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SignUpCommand.error(error: $error)';
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

abstract class Error implements SignUpCommand {
  const factory Error({required final AppException error}) = _$ErrorImpl;

  AppException get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

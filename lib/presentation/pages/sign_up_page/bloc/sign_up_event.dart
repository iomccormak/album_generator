part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpClicked({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
  }) = SignUpClicked;
}

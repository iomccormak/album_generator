part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signInClicked({
    required String email,
    required String password,
  }) = SignInClicked;
}

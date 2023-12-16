part of 'sign_in_bloc.dart';

@freezed
class SignInCommand with _$SignInCommand {
  const factory SignInCommand.navToHomePage() = NavToHomePage;

  const factory SignInCommand.validateEnteredValues({
    required AppException error,
  }) = ValidateEnteredValues;

  const factory SignInCommand.validateFirebaseAuth({
    required AppException error,
  }) = ValidateFirebaseAuth;

  const factory SignInCommand.error({
    required AppException error,
  }) = Error;
}

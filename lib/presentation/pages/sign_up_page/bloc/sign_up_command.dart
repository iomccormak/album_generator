part of 'sign_up_bloc.dart';

@freezed
class SignUpCommand with _$SignUpCommand {
  const factory SignUpCommand.navToHomePage() = NavToHomePage;

  const factory SignUpCommand.validateEnteredValues({
    required AppException error,
  }) = ValidateEnteredValues;

  const factory SignUpCommand.validateFirebaseAuth({
    required AppException error,
  }) = ValidateFirebaseAuth;

  const factory SignUpCommand.error({
    required AppException error,
  }) = Error;
}

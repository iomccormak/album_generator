part of 'sign_in_bloc.dart';

@freezed
class SignInCommand with _$SignInCommand {
  const factory SignInCommand.navToHomePage() = NavToHomePage;
  const factory SignInCommand.validator() = Validator;
  const factory SignInCommand.error({
    required String error,
  }) = Error;
}

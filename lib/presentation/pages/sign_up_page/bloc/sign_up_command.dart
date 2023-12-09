part of 'sign_up_bloc.dart';

@freezed
class SignUpCommand with _$SignUpCommand {
  const factory SignUpCommand.navToHomePage() = NavToHomePage;
  const factory SignUpCommand.validator() = Validator;
  const factory SignUpCommand.error({
    required String error,
  }) = Error;
}

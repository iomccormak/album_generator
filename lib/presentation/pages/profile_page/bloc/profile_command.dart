part of 'profile_bloc.dart';

@freezed
class ProfileCommand with _$ProfileCommand {
  const factory ProfileCommand.navToStartPage() = NavToStartPage;
  const factory ProfileCommand.error({
    required AppException error,
  }) = Error;
}
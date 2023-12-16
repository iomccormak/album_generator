part of 'main_bloc.dart';

@freezed
class MainCommand with _$MainCommand {
  const factory MainCommand.navToProfile() = NavToProfile;
  const factory MainCommand.navToSettings() = NavToSettings;
  const factory MainCommand.navToNext() = NavToNext;
  const factory MainCommand.error({
    required AppException error,
  }) = Error;
}

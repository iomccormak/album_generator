part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = Started;
  const factory MainEvent.save() = Save;
}

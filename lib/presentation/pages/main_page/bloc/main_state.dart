part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = Initial;
  const factory MainState.loading() = Loading;
  const factory MainState.loaded(
    UserModel currentUser,
    Album album,
  ) = Loaded;
}

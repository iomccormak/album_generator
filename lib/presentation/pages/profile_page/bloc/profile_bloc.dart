import 'dart:developer';

import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_command.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with SideEffectBlocMixin<ProfileState, ProfileCommand> {
  final UserRepository _userRepository;
  final AuthRepository _authRepository;
  late UserModel currentUser;

  ProfileBloc(
    this._userRepository,
    this._authRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
    on<SignOut>(_onSignOut);
  }

  void _onStarted(
    Started event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      emit(const ProfileState.loading());
      currentUser = await _userRepository.getCurrentUser();
      emit(ProfileState.loaded(currentUser));
    } catch (e) {
      log('Error in profile bloc: $e');
      produceSideEffect(const ProfileCommand.error());
    }
  }

  Future<void> _onSignOut(
    SignOut event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _authRepository.signOut();
      produceSideEffect(const ProfileCommand.navToStartPage());
    } catch (e) {
      log('Error in profile bloc: $e');
      produceSideEffect(const ProfileCommand.error());
    }
  }
}

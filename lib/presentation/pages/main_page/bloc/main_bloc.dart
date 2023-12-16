import 'dart:developer';

import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/album_repository.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_command.dart';
part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState>
    with SideEffectBlocMixin<MainState, MainCommand> {
  final UserRepository _userRepository;
  final AlbumRepository _albumRepository;

  MainBloc(
    this._userRepository,
    this._albumRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
    on<Save>(_onSave);
  }

  void _onStarted(
    Started event,
    Emitter<MainState> emit,
  ) async {
    try {
      final user = await _userRepository.getCurrentUser();
      final album = await _albumRepository.fetchNextAlbum(user);
      emit(MainState.loaded(user, album));
    } catch (e) {
      log('Error in main bloc: $e');
      produceSideEffect(
          MainCommand.error(error: 'Main page error: ${e.toString()}'));
    }
  }

  void _onSave(
    Save event,
    Emitter<MainState> emit,
  ) async {
    try {
      emit(const MainState.loading());
      final user = await _userRepository.getCurrentUser();
      final album = await _albumRepository.fetchNextAlbum(user);
      emit(MainState.loaded(UserModel.getEmpty(), album!));
    } catch (e) {
      log('Error in main bloc: $e');
      produceSideEffect(
          MainCommand.error(error: 'Main page error: ${e.toString()}'));
    }
  }
}

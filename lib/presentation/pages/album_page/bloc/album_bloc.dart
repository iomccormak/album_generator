import 'dart:developer';

import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/domain/enitites/errors/app_exception.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/review_repository.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'album_event.dart';
part 'album_state.dart';
part 'album_command.dart';
part 'album_bloc.freezed.dart';

@injectable
class AlbumBloc extends Bloc<AlbumEvent, AlbumState>
    with SideEffectBlocMixin<AlbumState, AlbumCommand> {
  final ReviewRepository _reviewRepository;
  final UserRepository _userRepository;

  AlbumBloc(
    this._reviewRepository,
    this._userRepository,
  ) : super(const Initial()) {
    on<Started>(_onStarted);
  }

  Future<UserModel> getAuthor(String authorId) async {
    return await _userRepository.getUserById(authorId);
  }

  void _onStarted(
    Started event,
    Emitter<AlbumState> emit,
  ) async {
    try {
      emit(const AlbumState.loading());
      final reviews =
          await _reviewRepository.fetchReviewsByAlbumId(event.album.id);
      emit(AlbumState.loaded(reviews: reviews));
    } catch (e) {
      log('Error in album bloc: $e');
      final exception = AppException(e);
      produceSideEffect(AlbumCommand.error(error: exception));
    }
  }
}

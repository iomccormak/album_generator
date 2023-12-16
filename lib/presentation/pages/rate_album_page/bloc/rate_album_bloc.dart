import 'package:album_generator/domain/enitites/errors/app_exception.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/repositories/album_repository.dart';
import 'package:album_generator/domain/repositories/review_repository.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'rate_album_event.dart';
part 'rate_album_state.dart';
part 'rate_album_command.dart';
part 'rate_album_bloc.freezed.dart';

@injectable
class RateAlbumBloc extends Bloc<RateAlbumEvent, RateAlbumState>
    with SideEffectBlocMixin<RateAlbumState, RateAlbumCommand> {
  final ReviewRepository _reviewRepository;
  final UserRepository _userRepository;
  final AlbumRepository _albumRepository;

  RateAlbumBloc(
    this._reviewRepository,
    this._userRepository,
    this._albumRepository,
  ) : super(const Initial()) {
    on<RateAlbum>(_onRateAlbum);
    on<DidNotListen>(_onDidNotListen);
  }

  Future<void> _onRateAlbum(
    RateAlbum event,
    Emitter<RateAlbumState> emit,
  ) async {
    try {
      if (event.rating != 0) {
        emit(const RateAlbumState.loading());
        await _reviewRepository.rateAlbum(
          Review(
            authorId: event.authorId,
            rating: event.rating,
            albumId: event.albumId,
            timeStamp: DateTime.now(),
            description: event.description,
          ),
        );
        await _userRepository.updateUserReviewCount(event.albumId);
        await _albumRepository.updateAlbumRating(event.albumId, event.rating);
        produceSideEffect(const RateAlbumCommand.navToNextAlbum());
      } else {
        final exception = AppException('You must rate this album');
        produceSideEffect(RateAlbumCommand.error(error: exception));
      }
    } catch (e) {
      final exception = AppException(e);
      produceSideEffect(RateAlbumCommand.error(error: exception));
    }
  }

  Future<void> _onDidNotListen(
    DidNotListen event,
    Emitter<RateAlbumState> emit,
  ) async {
    produceSideEffect(const RateAlbumCommand.navToNextAlbum());
  }
}

import 'package:album_generator/domain/repositories/album_repository.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:album_generator/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
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
  final AlbumRepository _albumRepository;
  final UserRepository _userRepository;

  RateAlbumBloc(
    this._albumRepository,
    this._userRepository,
  ) : super(const Initial()) {
    on<RateAlbum>(_onRateAlbum);
  }

  Future<void> _onRateAlbum(
    RateAlbum event,
    Emitter<RateAlbumState> emit,
  ) async {
    try {} catch (e) {}
  }
}

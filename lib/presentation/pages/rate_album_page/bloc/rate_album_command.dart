part of 'rate_album_bloc.dart';

@freezed
class RateAlbumCommand with _$RateAlbumCommand {
  const factory RateAlbumCommand.navToNextAlbum() = NavToNextAlbum;
  const factory RateAlbumCommand.error({
    required String error,
  }) = Error;
}

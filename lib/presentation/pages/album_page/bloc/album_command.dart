part of 'album_bloc.dart';

@freezed
class AlbumCommand with _$AlbumCommand {
  const factory AlbumCommand.error({
    required AppException error,
  }) = Error;
}

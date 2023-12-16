part of 'album_bloc.dart';

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState.initial() = Initial;
  const factory AlbumState.loading() = Loading;
  const factory AlbumState.loaded({
    List<Review>? reviews,
  }) = Loaded;
}

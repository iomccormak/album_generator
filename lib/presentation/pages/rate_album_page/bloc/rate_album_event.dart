part of 'rate_album_bloc.dart';

@freezed
class RateAlbumEvent with _$RateAlbumEvent {
  const factory RateAlbumEvent.rateAlbum({
    String? description,
    required double rating,
    required String authorId,
    required String albumId,
  }) = RateAlbum;
  const factory RateAlbumEvent.didNotListen() = DidNotListen;
}

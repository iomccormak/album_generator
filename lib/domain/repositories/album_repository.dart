import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/domain/enitites/user/user.dart';

abstract class AlbumRepository {
  Future<Album?> fetchNextAlbum(UserModel user);

  Future<Album> fetchAlbumById(String id);

  Future<List<Album>?> fetchListenedAlbums(List<String> ids);

  Future<void> updateAlbumRating(String albumId, double rating);
}

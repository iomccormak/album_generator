import 'package:album_generator/domain/enitites/album/album.dart';

abstract class AlbumRepository {
  Future<Album> fetchRandomAlbum();

  Future<Album> fetchAlbum(String id);
}

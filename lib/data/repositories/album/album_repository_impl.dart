import 'package:album_generator/data/datasources/album/album_data_source.dart';
import 'package:album_generator/data/datasources/user/user_data_source.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/album_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AlbumRepository)
class AlbumRepositoryImpl extends AlbumRepository {
  final AlbumDataSource _albumDataSource;
  final UserDataSource _userDataSource;

  AlbumRepositoryImpl(
    this._albumDataSource,
    this._userDataSource,
  );

  @override
  Future<Album> fetchAlbumById(String id) async {
    return await _albumDataSource.fetchAlbumById(id);
  }

  @override
  Future<Album?> fetchNextAlbum(UserModel user) async {
    return await _albumDataSource.fetchNextAlbum(user);
  }

  @override
  Future<List<Album>?> fetchListenedAlbums(List<String> ids) async {
    return await _albumDataSource.fetchListenedAlbums(ids);
  }

  @override
  Future<void> updateAlbumRating(String albumId, double rating) async {
    await _albumDataSource.updateAlbumRating(albumId, rating);
  }
}

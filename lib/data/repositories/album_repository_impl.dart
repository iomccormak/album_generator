
import 'package:album_generator/data/datasources/album/album_data_source.dart';
import 'package:album_generator/data/datasources/user/user_data_source.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
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
  Future<Album> fetchAlbum(String id) async {
    return await _albumDataSource.fetchAlbum(id);
  }

  @override
  Future<Album> fetchRandomAlbum() async {
    return await _albumDataSource.fetchRandomAlbum();
  }
}

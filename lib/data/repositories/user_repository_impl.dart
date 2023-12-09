import 'package:album_generator/data/datasources/user/user_data_source.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(
    this._userDataSource,
  );

  @override
  Future<UserModel> getCurrentUser() async {
    return await _userDataSource.getCurrentUser();
  }
}

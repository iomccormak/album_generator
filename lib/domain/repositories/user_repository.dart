import 'package:album_generator/domain/enitites/user/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();
}
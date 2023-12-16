import 'package:album_generator/data/datasources/user/user_data_source.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(
    this._userDataSource,
  );

  @override
  Future<UserModel> getUserById(String userId) async {
    return await _userDataSource.getUserById(userId);
  }

  @override
  Future<UserModel> getCurrentUser() async {
    return await _userDataSource.getCurrentUser();
  }

  @override
  Future<void> updateUserReviewCount(String albumId) async {
    await _userDataSource.updateReviewCount(albumId);
  }

  @override
  Future<List<Review>> fetchUserReviews(String authorId) async {
    return await _userDataSource.fetchUserReviews(authorId);
  }
}

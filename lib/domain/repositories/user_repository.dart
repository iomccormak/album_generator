import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/enitites/user/user.dart';

abstract class UserRepository {
  Future<UserModel> getCurrentUser();

  Future<void> updateReviewCount(String albumId);

  Future<List<Review>> fetchUserReviews(String authorId);
}

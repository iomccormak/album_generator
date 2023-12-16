import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/enitites/user/user.dart';

abstract class ReviewRepository {
  Future<void> rateAlbum(Review review);

  Future<List<Review>?> fetchReviewsByAlbumId(String albumId);
}

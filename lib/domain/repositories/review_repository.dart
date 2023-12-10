import 'package:album_generator/domain/enitites/review/review.dart';

abstract class ReviewRepository {
  Future<void> rateAlbum(Review review);
}

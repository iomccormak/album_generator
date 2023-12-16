import 'package:album_generator/data/datasources/review/review_data_source.dart';
import 'package:album_generator/data/datasources/user/user_data_source.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/repositories/review_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ReviewRepository)
class ReviewRepositoryImpl extends ReviewRepository {
  final ReviewDataSource _reviewDataSource;
  final UserDataSource _userDataSource;

  ReviewRepositoryImpl(
    this._reviewDataSource,
    this._userDataSource,
  );

  @override
  Future<void> rateAlbum(Review review) async {
    await _reviewDataSource.rateAlbum(review);
  }

  @override
  Future<List<Review>?> fetchReviewsByAlbumId(String albumId) async {
    return await _reviewDataSource.fetchReviewsByAlbumId(albumId);
  }

}

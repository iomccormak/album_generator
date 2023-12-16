import 'package:album_generator/data/firebase_collections.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class ReviewDataSource {
  final FirebaseFirestore _firebaseFirestore;

  ReviewDataSource(
    this._firebaseFirestore,
  );

  Future<void> rateAlbum(Review review) async {
    Map<String, dynamic> reviewJson = review.toJson();
    final newDocRef =
        _firebaseFirestore.collection(FirebaseCollections.reviews).doc();
    reviewJson['id'] = newDocRef.id;
    await _firebaseFirestore.runTransaction(
        (transaction) async => transaction.set(newDocRef, reviewJson));
  }

  Future<List<Review>?> fetchReviewsByAlbumId(String albumId) async {
    final snapshot = await _firebaseFirestore
        .collection(FirebaseCollections.reviews)
        .where('albumId', isEqualTo: albumId)
        .orderBy('timeStamp', descending: true)
        .get();

    return snapshot.docs
        .map((review) => Review.fromJson(review.data()))
        .toList();
  }
}

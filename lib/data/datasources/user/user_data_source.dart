import 'package:album_generator/data/firebase_collections.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  UserDataSource(
    this._firebaseFirestore,
    this._firebaseAuth,
  );

  Future<UserModel> getCurrentUser() async {
    final uid = _firebaseAuth.currentUser!.uid;
    final json = await _firebaseFirestore
        .collection(FirebaseCollections.users)
        .doc(uid)
        .get();
    return UserModel.fromJson(json.data()!);
  }

  Future<void> updateReviewCount(String albumId) async {
    final currentUser = await getCurrentUser();
    if (currentUser.reviewCount != null) {
      await _firebaseFirestore
          .collection(FirebaseCollections.users)
          .doc(currentUser.id)
          .update({
        'reviewCount': FieldValue.increment(1),
        'listenedAlbums': FieldValue.arrayUnion([albumId]),
      });
    } else {
      await _firebaseFirestore
          .collection(FirebaseCollections.users)
          .doc(currentUser.id)
          .set(
        {
          'reviewCount': 1,
          'listenedAlbums': [albumId],
        },
        SetOptions(merge: true),
      );
    }
  }
}

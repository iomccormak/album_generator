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
}

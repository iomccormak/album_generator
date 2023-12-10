import 'package:album_generator/data/firebase_collections.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthDataSource(
    this._firebaseAuth,
    this._firebaseFirestore,
  );

  Future<void> emailSignUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    _firebaseFirestore
        .collection(FirebaseCollections.users)
        .doc(userCredential.user!.uid)
        .set(
      {
        'username': name,
        'email': email,
        'id': userCredential.user!.uid,
      },
    );
  }

  Future<void> emailSignIn(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  bool get isUserAuthorizedWithEmail {
    return _firebaseAuth.currentUser != null;
  }
}

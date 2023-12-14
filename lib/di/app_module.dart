import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @singleton
  FirebaseFirestore fireStore() => FirebaseFirestore.instance;

  @singleton
  FirebaseAuth firebaseAuth() => FirebaseAuth.instance;

  @singleton
  FirebaseStorage firebaseStorage() => FirebaseStorage.instance;

  
}

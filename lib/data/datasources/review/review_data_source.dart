import 'package:album_generator/data/datasources/auth/auth_data_source.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class ReviewDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final AuthDataSource _authDataSource;

  ReviewDataSource(this._firebaseFirestore, this._authDataSource);
}
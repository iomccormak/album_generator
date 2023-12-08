import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebasePhotoDataSource {
  final FirebaseStorage _firebaseStorage;

  FirebasePhotoDataSource(this._firebaseStorage);

  static const String albumPhotos = 'album_photos/';

  Future<String> getCheesePhoto({required String photoId}) async {
    return await _firebaseStorage.ref(albumPhotos + photoId).getDownloadURL();
  }

}
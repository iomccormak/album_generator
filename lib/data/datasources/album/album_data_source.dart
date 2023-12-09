import 'dart:math';

import 'package:album_generator/data/firebase_collections.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class AlbumDataSource {
  final FirebaseFirestore _firebaseFirestore;

  AlbumDataSource(this._firebaseFirestore);

  Future<Album> fetchAlbum(String id) async {
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .doc(id)
        .get();
    Album album = Album.fromJson(snapshot.data()!);
    return album;
  }

  Future<Album> fetchRandomAlbum() async {
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .get();
    int randomIndex = Random().nextInt(snapshot.docs.length);
    Album album = Album.fromJson(snapshot.docs[randomIndex].data());
    return album;
  }
}

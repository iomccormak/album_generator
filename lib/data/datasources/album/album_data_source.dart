import 'dart:math';

import 'package:album_generator/data/firebase_collections.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class AlbumDataSource {
  final FirebaseFirestore _firebaseFirestore;

  AlbumDataSource(
    this._firebaseFirestore,
  );

  Future<Album> fetchAlbum(String id) async {
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .doc(id)
        .get();
    Album album = Album.fromJson(snapshot.data()!);
    return album;
  }

  Future<Album?> fetchNextAlbum(UserModel user) async {
    final listenedAlbums = user.listenedAlbums ?? [];
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .get();

    final unheardAlbums = snapshot.docs.where((doc) {
      return !listenedAlbums.contains(doc['id']);
    }).toList();

    if (unheardAlbums.isNotEmpty) {
      int randomIndex = Random().nextInt(unheardAlbums.length);
      Album album = Album.fromJson(unheardAlbums[randomIndex].data());
      return album;
    } else {
      return null;
    }
  }

  Future<List<Album>?> fetchListenedAlbums(List<String> ids) async {
    final List<Album> listenedAlbums = [];
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .get();

    final heardAlbums = snapshot.docs.where((doc) {
      return ids.contains(doc['id']);
    }).toList();

    if (heardAlbums.isNotEmpty) {
      for (int i = 0; i < heardAlbums.length; i++) {
        listenedAlbums.add(Album.fromJson(heardAlbums[i].data()));
      }
    }
    return listenedAlbums;
  }

  Future<void> updateRating(String albumId, double rating) async {
    final snapshot = await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .doc(albumId)
        .get();

    double? currentRating = snapshot['rating'];
    int reviewCount = snapshot['reviewCount'];

    currentRating ??= 0;
    double updatedRating =
        (currentRating * reviewCount + rating) / (reviewCount + 1);
    int updatedNumberOfRatings = reviewCount + 1;

    await FirebaseFirestore.instance
        .collection(FirebaseCollections.albums)
        .doc(albumId)
        .update({
      'rating': updatedRating,
      'reviewCount': updatedNumberOfRatings,
    });
  }
}

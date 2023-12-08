import 'package:album_generator/domain/enitites/photo/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';

part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String id,
    required String name,
    required String artist,
    required String released,
    String? cover,
    String? description,
    String? yandexLink,
    String? youtubeLink,
    String? wikiLink,
    int? reviewCount,
    double? rating,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson({
        'id': json['id'] as String,
        'name': json['name'] as String,
        'artist': json['artist'] as String,
        'released': json['released'] as String,
        'cover': json['cover'] as String?,
        'description': json['description'] as String?,
        'yandexLink': json['yandexLink'] as String?,
        'youtubeLink': json['youtubeLink'] as String?,
        'wikiLink': json['wikiLink'] as String?,
        'reviewCount': json['reviewCount'] as int?,
        'rating': json['rating'] as double?,
      });
}

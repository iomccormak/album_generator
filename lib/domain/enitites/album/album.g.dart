// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artist: json['artist'] as String,
      released: json['released'] as String,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
      yandexLink: json['yandexLink'] as String?,
      youtubeLink: json['youtubeLink'] as String?,
      wikiLink: json['wikiLink'] as String?,
      reviewCount: json['reviewCount'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artist': instance.artist,
      'released': instance.released,
      'cover': instance.cover,
      'description': instance.description,
      'yandexLink': instance.yandexLink,
      'youtubeLink': instance.youtubeLink,
      'wikiLink': instance.wikiLink,
      'reviewCount': instance.reviewCount,
      'rating': instance.rating,
    };

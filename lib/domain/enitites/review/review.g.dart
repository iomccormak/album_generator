// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as String?,
      authorId: json['authorId'] as String,
      rating: (json['rating'] as num).toDouble(),
      albumId: json['albumId'] as String,
      description: json['description'] as String?,
      timeStamp: DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'rating': instance.rating,
      'albumId': instance.albumId,
      'description': instance.description,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };

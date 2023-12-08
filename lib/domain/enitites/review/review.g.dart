// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as String?,
      authorId: json['authorId'] as String,
      rating: json['rating'] as int,
      albumId: json['albumId'] as String,
      text: json['text'] as String? ?? '',
      timeStamp: DateTime.parse(json['timeStamp'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'rating': instance.rating,
      'albumId': instance.albumId,
      'text': instance.text,
      'timeStamp': instance.timeStamp.toIso8601String(),
    };

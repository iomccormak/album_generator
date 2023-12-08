// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDtoImpl _$$ReviewDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDtoImpl(
      id: json['id'] as String?,
      authorId: json['authorId'] as String,
      rating: json['rating'] as int,
      albumId: json['albumId'] as String,
      text: json['text'] as String? ?? '',
      timeStamp: const TimestampConverter().fromJson(json['timeStamp']),
    );

Map<String, dynamic> _$$ReviewDtoImplToJson(_$ReviewDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'rating': instance.rating,
      'albumId': instance.albumId,
      'text': instance.text,
      'timeStamp': const TimestampConverter().toJson(instance.timeStamp),
    };

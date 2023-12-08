import 'package:album_generator/data/models/time_stamp_converter.dart';
import 'package:album_generator/domain/enitites/review/review.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';

part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const factory ReviewDto({
    String? id,
    required String authorId,
    required int rating,
    required String albumId,
    @Default('') String text,
    @TimestampConverter() required Timestamp timeStamp,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}

extension ReviewMapper on ReviewDto {
  Review toModel() {
    return Review(
      authorId: authorId,
      id: id,
      rating: rating,
      albumId: albumId,
      text: text,
      timeStamp: DateTime.fromMillisecondsSinceEpoch(timeStamp.nanoseconds),
    );
  }
}

extension ReviewDtoListMapper on List<Map<String, dynamic>> {
  List<ReviewDto> toReviewDtoList() {
    List<ReviewDto> reviews = [];
    for (var review in this) {
      reviews.add(ReviewDto.fromJson(review));
    }
    return reviews;
  }
}

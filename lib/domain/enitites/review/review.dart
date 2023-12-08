import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    String? id,
    required String authorId,
    required int rating,
    required String albumId,
    @Default('') String text,
    required DateTime timeStamp,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

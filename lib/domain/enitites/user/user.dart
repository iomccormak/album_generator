import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? id,
    required String username,
    required String email,
    int? reviewCount,
    List<int>? listenedAlbums,
  }) = _User;

  static User getEmpty() {
    return const User(
      username: 'ivan',
      email: 'ivan@gmail.com',
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

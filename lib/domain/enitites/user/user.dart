import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String username,
    required String email,
    String? avatar,
    int? reviewCount,
    List<String>? listenedAlbums,
  }) = _User;

  static UserModel getEmpty() {
    return const UserModel(
      id: 'id',
      username: 'ivan',
      email: 'ivan@gmail.com',
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

import 'package:album_generator/domain/enitites/user/user.dart';

abstract class AuthRepository {
  Future<void> emailSignIn(
    String email,
    String password,
  );

  Future<void> emailSignUp(
    String name,
    String email,
    String password,
  );

  Future<void> signOut();

  bool get isUserAuthorizedWithEmail;
}

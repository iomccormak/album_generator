import 'dart:developer';

import 'package:album_generator/data/datasources/auth/auth_data_source.dart';
import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(
    this._authDataSource,
  );

  @override
  Future<void> emailSignIn(String email, String password) async {
    await _authDataSource.emailSignIn(email, password);
  }

  @override
  Future<void> emailSignUp(
    String name,
    String email,
    String password,
  ) async {
    log('repo auth');
    await _authDataSource.emailSignUp(
      name: name,
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await _authDataSource.signOut();
  }

  @override
  bool get isUserAuthorizedWithEmail =>
      _authDataSource.isUserAuthorizedWithEmail;
}

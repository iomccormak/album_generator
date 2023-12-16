import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class AppException implements Exception {
  final Object sourceError;

  AppException(this.sourceError);
}

extension ErrorTextHandler on AppException {
  bool get isFirebaseAuthNetworkError =>
      sourceError is FirebaseAuthException &&
      (sourceError as FirebaseAuthException).code == 'network-request-failed';

  bool get isGoogleAuthNetworkError =>
      sourceError is PlatformException &&
      (sourceError as PlatformException).code == 'network_error';

  bool get isFirebaseNetworkError =>
      sourceError is FirebaseException &&
      (sourceError as FirebaseException).code == 'unavailable';

  bool get isTimeOutError => sourceError is TimeoutException;

  bool get isNetworkError =>
      isFirebaseAuthNetworkError ||
      isGoogleAuthNetworkError ||
      isFirebaseNetworkError ||
      isTimeOutError;

  String getErrorText() {
    if (isNetworkError) {
      return 'Network error';
    } else {
      return 'Something went wrong';
    }
  }

  String? getFirebaseAuthErrorText() {
    if (sourceError is FirebaseAuthException) {
      final error = (sourceError as FirebaseAuthException);
      if (error.code == 'email-already-in-use') {
        return 'Account with this email already exist';
      } else if (error.code == 'invalid-email') {
        return 'Invalid email';
      } else if (error.code == 'operation-not-allowed') {
        return 'Account is not enabled';
      } else if (error.code == 'user-not-found') {
        return 'User not found';
      } else if (error.code == 'user-disabled') {
        return 'User disabled';
      } else if (error.code == 'weak-password') {
        return 'Password in not strong enough';
      } else if (error.code == 'wrong-password') {
        return 'Invalid password';
      } else if (error.code == 'operation-not-allowed') {
        return 'Account is not enabled';
      } else if (error.code == 'invalid-credential') {
        return 'User not found';
      } else {
        return null;
      }
    }
    return null;
  }
}

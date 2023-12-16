import 'package:album_generator/domain/enitites/errors/app_exception.dart';
import 'package:flutter/material.dart';

extension ErrorHandler on BuildContext {
  void showErrorSnackBar(AppException appException) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(appException.getErrorText()),
      ),
    );
  }

  void showFirebaseErrorSnackbar(AppException appException) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(appException.getFirebaseAuthErrorText()!),
      ),
    );
  }

  void showCustomErrorSnackbar(AppException appException) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(appException.sourceError.toString()),
      ),
    );
  }
}
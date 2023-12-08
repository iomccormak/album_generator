import 'dart:async';

import 'package:album_generator/domain/enitites/errors/network_error.dart';

abstract class SnackBarManager {
  final StreamController<NetworkError> controller = StreamController();
  void addNewError({required NetworkError error});
}
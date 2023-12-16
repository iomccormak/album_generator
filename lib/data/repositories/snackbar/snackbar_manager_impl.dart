import 'package:album_generator/domain/enitites/errors/network_error.dart';
import 'package:album_generator/domain/repositories/snackbar_manager.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: SnackBarManager)
class SnackBarManagerImpl extends SnackBarManager {
  @override
  void addNewError({required NetworkError error}) {
    controller.add(error);
  }
}

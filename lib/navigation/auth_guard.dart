import 'package:album_generator/di/locator.dart';
import 'package:album_generator/domain/repositories/auth_repository.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final _authRepository = getIt<AuthRepository>();
    if (await _authRepository.isUserAuthorizedWithEmail) {
      try {
        //await _userRepo.loadCurrentUser(_authRepo.userId);
        resolver.next(true);
        return;
      } catch (e) {
        router.push(const StartRoute());
      }
    } else {
      router.push(const StartRoute());
    }
  }
}
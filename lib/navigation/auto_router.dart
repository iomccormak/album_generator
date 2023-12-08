import 'package:album_generator/presentation/pages/album_page/album_page.dart';
import 'package:album_generator/presentation/pages/info_page/info_page.dart';
import 'package:album_generator/presentation/pages/login_page/login_page.dart';
import 'package:album_generator/presentation/pages/main_page/main_page.dart';
import 'package:album_generator/presentation/pages/profile_page/profile_page.dart';
import 'package:album_generator/presentation/pages/registration_page/registration_page.dart';
import 'package:album_generator/presentation/pages/start_page/start_page.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: StartPage,
      initial: true,
    ),
    AutoRoute(
      page: AlbumPage,
    ),
    AutoRoute(
      page: InfoPage,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: MainPage,
      //initial: true,
    ),
    AutoRoute(
      page: ProfilePage,
    ),
    AutoRoute(
      page: RegistrationPage,
    ),
  ],
)
class $AutoRouter {}

import 'package:album_generator/navigation/auth_guard.dart';
import 'package:album_generator/presentation/pages/album_page/album_page.dart';
import 'package:album_generator/presentation/pages/info_page/info_page.dart';
import 'package:album_generator/presentation/pages/rate_album_page/rate_album_page.dart';
import 'package:album_generator/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:album_generator/presentation/pages/main_page/main_page.dart';
import 'package:album_generator/presentation/pages/profile_page/profile_page.dart';
import 'package:album_generator/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:album_generator/presentation/pages/start_page/start_page.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
      guards: [AuthGuard],
    ),
    AutoRoute(
      page: StartPage,
    ),
    AutoRoute(
      page: AlbumPage,
    ),
    AutoRoute(
      page: InfoPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: ProfilePage,
    ),
    AutoRoute(
      page: SignUpPage,
    ),
    AutoRoute(
      page: RateAlbumPage,
    )
  ],
)
class $AutoRouter {}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../presentation/pages/album_page/album_page.dart' as _i2;
import '../presentation/pages/info_page/info_page.dart' as _i3;
import '../presentation/pages/login_page/login_page.dart' as _i4;
import '../presentation/pages/main_page/main_page.dart' as _i5;
import '../presentation/pages/profile_page/profile_page.dart' as _i6;
import '../presentation/pages/registration_page/registration_page.dart' as _i7;
import '../presentation/pages/start_page/start_page.dart' as _i1;

class AutoRouter extends _i8.RootStackRouter {
  AutoRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    StartRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.StartPage(),
      );
    },
    AlbumRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AlbumPage(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.InfoPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.RegistrationPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          StartRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          AlbumRoute.name,
          path: '/album-page',
        ),
        _i8.RouteConfig(
          InfoRoute.name,
          path: '/info-page',
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i8.RouteConfig(
          MainRoute.name,
          path: '/main-page',
        ),
        _i8.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i8.RouteConfig(
          RegistrationRoute.name,
          path: '/registration-page',
        ),
      ];
}

/// generated route for
/// [_i1.StartPage]
class StartRoute extends _i8.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i2.AlbumPage]
class AlbumRoute extends _i8.PageRouteInfo<void> {
  const AlbumRoute()
      : super(
          AlbumRoute.name,
          path: '/album-page',
        );

  static const String name = 'AlbumRoute';
}

/// generated route for
/// [_i3.InfoPage]
class InfoRoute extends _i8.PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: '/info-page',
        );

  static const String name = 'InfoRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main-page',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: '/registration-page',
        );

  static const String name = 'RegistrationRoute';
}

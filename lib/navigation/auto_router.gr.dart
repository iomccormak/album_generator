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

import '../presentation/pages/album_page/album_page.dart' as _i3;
import '../presentation/pages/info_page/info_page.dart' as _i4;
import '../presentation/pages/main_page/main_page.dart' as _i1;
import '../presentation/pages/profile_page/profile_page.dart' as _i6;
import '../presentation/pages/sign_in_page/sign_in_page.dart' as _i5;
import '../presentation/pages/sign_up_page/sign_up_page.dart' as _i7;
import '../presentation/pages/start_page/start_page.dart' as _i2;
import 'auth_guard.dart' as _i10;

class AutoRouter extends _i8.RootStackRouter {
  AutoRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    StartRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.StartPage(),
      );
    },
    AlbumRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AlbumPage(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.InfoPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignInPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          MainRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i8.RouteConfig(
          StartRoute.name,
          path: '/start-page',
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
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i8.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.StartPage]
class StartRoute extends _i8.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/start-page',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i3.AlbumPage]
class AlbumRoute extends _i8.PageRouteInfo<void> {
  const AlbumRoute()
      : super(
          AlbumRoute.name,
          path: '/album-page',
        );

  static const String name = 'AlbumRoute';
}

/// generated route for
/// [_i4.InfoPage]
class InfoRoute extends _i8.PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: '/info-page',
        );

  static const String name = 'InfoRoute';
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
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
/// [_i7.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

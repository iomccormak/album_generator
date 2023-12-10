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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../domain/enitites/album/album.dart' as _i12;
import '../domain/enitites/user/user.dart' as _i13;
import '../presentation/pages/album_page/album_page.dart' as _i3;
import '../presentation/pages/info_page/info_page.dart' as _i4;
import '../presentation/pages/main_page/main_page.dart' as _i1;
import '../presentation/pages/profile_page/profile_page.dart' as _i6;
import '../presentation/pages/rate_album_page/rate_album_page.dart' as _i8;
import '../presentation/pages/sign_in_page/sign_in_page.dart' as _i5;
import '../presentation/pages/sign_up_page/sign_up_page.dart' as _i7;
import '../presentation/pages/start_page/start_page.dart' as _i2;
import 'auth_guard.dart' as _i11;

class AutoRouter extends _i9.RootStackRouter {
  AutoRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    StartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.StartPage(),
      );
    },
    AlbumRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AlbumPage(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.InfoPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignInPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
    RateAlbumRoute.name: (routeData) {
      final args = routeData.argsAs<RateAlbumRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.RateAlbumPage(
          key: args.key,
          album: args.album,
          user: args.user,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          MainRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i9.RouteConfig(
          StartRoute.name,
          path: '/start-page',
        ),
        _i9.RouteConfig(
          AlbumRoute.name,
          path: '/album-page',
        ),
        _i9.RouteConfig(
          InfoRoute.name,
          path: '/info-page',
        ),
        _i9.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i9.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i9.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i9.RouteConfig(
          RateAlbumRoute.name,
          path: '/rate-album-page',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.StartPage]
class StartRoute extends _i9.PageRouteInfo<void> {
  const StartRoute()
      : super(
          StartRoute.name,
          path: '/start-page',
        );

  static const String name = 'StartRoute';
}

/// generated route for
/// [_i3.AlbumPage]
class AlbumRoute extends _i9.PageRouteInfo<void> {
  const AlbumRoute()
      : super(
          AlbumRoute.name,
          path: '/album-page',
        );

  static const String name = 'AlbumRoute';
}

/// generated route for
/// [_i4.InfoPage]
class InfoRoute extends _i9.PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: '/info-page',
        );

  static const String name = 'InfoRoute';
}

/// generated route for
/// [_i5.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i8.RateAlbumPage]
class RateAlbumRoute extends _i9.PageRouteInfo<RateAlbumRouteArgs> {
  RateAlbumRoute({
    _i10.Key? key,
    required _i12.Album album,
    required _i13.UserModel user,
  }) : super(
          RateAlbumRoute.name,
          path: '/rate-album-page',
          args: RateAlbumRouteArgs(
            key: key,
            album: album,
            user: user,
          ),
        );

  static const String name = 'RateAlbumRoute';
}

class RateAlbumRouteArgs {
  const RateAlbumRouteArgs({
    this.key,
    required this.album,
    required this.user,
  });

  final _i10.Key? key;

  final _i12.Album album;

  final _i13.UserModel user;

  @override
  String toString() {
    return 'RateAlbumRouteArgs{key: $key, album: $album, user: $user}';
  }
}

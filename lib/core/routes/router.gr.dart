// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../presenter/pages/create_post/create_post_page.dart' as _i2;
import '../../presenter/pages/home/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    CreatePostRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CreatePostPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: 'home', fullMatch: true),
        _i3.RouteConfig(HomeRouter.name, path: 'home'),
        _i3.RouteConfig(CreatePostRouter.name, path: 'create_post')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.CreatePostPage]
class CreatePostRouter extends _i3.PageRouteInfo<void> {
  const CreatePostRouter() : super(CreatePostRouter.name, path: 'create_post');

  static const String name = 'CreatePostRouter';
}

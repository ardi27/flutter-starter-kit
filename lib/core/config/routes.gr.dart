// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

import '../../feature/dashboard/screen/Dashboard.dart' as _i3;
import '../../feature/login/screen/login.dart' as _i4;
import '../../feature/splash/screen/splash_screen.dart' as _i2;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.SplashScreen(),
          maintainState: true,
          fullscreenDialog: false);
    },
    DashboardRoute.name: (entry) {
      var args = entry.routeData
          .argsAs<DashboardRouteArgs>(orElse: () => DashboardRouteArgs());
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.Dashboard(key: args.key, welcome: args.welcome),
          maintainState: true,
          fullscreenDialog: false);
    },
    LoginRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i4.Login(),
          maintainState: true,
          fullscreenDialog: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name,
            path: '/', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(DashboardRoute.name,
            path: '/dashboard', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(LoginRoute.name,
            path: '/login', fullMatch: false, usesTabsRouter: false)
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class DashboardRoute extends _i1.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({this.key, this.welcome})
      : super(name,
            path: '/dashboard',
            args: DashboardRouteArgs(key: key, welcome: welcome));

  final _i5.Key? key;

  final String? welcome;

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key, this.welcome});

  final _i5.Key? key;

  final String? welcome;
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

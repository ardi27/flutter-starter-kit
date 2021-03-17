import 'package:auto_route/auto_route.dart';
import 'package:starter_kit/feature/dashboard/screen/Dashboard.dart';
import 'package:starter_kit/feature/login/screen/login.dart';
import 'package:starter_kit/feature/splash/screen/splash_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashScreen, path: "/", initial: true),
  MaterialRoute(page: Dashboard, path: "/dashboard"),
  MaterialRoute(page: Login, path: "/login")
])
class $Router {}

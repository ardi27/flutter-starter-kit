import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter_kit/core/config/routes.gr.dart' as router;
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/core/constants/Strings.dart';
import 'package:starter_kit/core/constants/Theme.dart';
import 'package:starter_kit/core/networks/logging_interceptors.dart';
import 'feature/counter/screen/counter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getIt<LoggingInterceptors>();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter=router.Router();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: '${Strings.appName}',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Themes.kPrimaryColor,
        inputDecorationTheme: Themes.inputDecorationTheme,
        appBarTheme: Themes.appBarTheme,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
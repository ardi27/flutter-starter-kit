import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/core/constants/Strings.dart';
import 'package:starter_kit/core/constants/Theme.dart';

import 'feature/counter/screen/counter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarDividerColor: Colors.white.withOpacity(0),
        statusBarColor: Themes.kPrimaryColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: '${Strings.appName}',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Themes.kPrimaryColor,

      ),
      home:Counter(),
    );
  }
}
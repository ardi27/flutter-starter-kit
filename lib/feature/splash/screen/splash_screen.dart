import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_kit/core/config/routes.gr.dart';
import 'package:starter_kit/core/constants/Theme.dart';
import 'package:starter_kit/feature/authentication/cubit/authentication_cubit.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/feature/dashboard/screen/Dashboard.dart';
import 'package:starter_kit/feature/login/screen/login.dart';
import 'package:starter_kit/feature/splash/screen/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarDividerColor: Colors.white.withOpacity(0),
        statusBarColor: Themes.kPrimaryColor,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light));
    return BlocProvider(
      create: (_) => getIt<AuthenticationCubit>()..appStarted(),
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => OnboardingScreen(),
            authenticated: (value) {
              return Dashboard(index: 0,);
            },
            unAuthenticated: (){
              return OnboardingScreen();
            }
          );
        },
      ),
    );
  }
}

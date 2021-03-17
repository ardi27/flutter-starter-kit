import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_kit/core/config/routes.gr.dart';
import 'package:starter_kit/feature/authentication/cubit/authentication_cubit.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/feature/dashboard/screen/Dashboard.dart';
import 'package:starter_kit/feature/login/screen/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthenticationCubit>()..appStarted(),
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Center(
              child: Text("Splash Screen"),
            ),
            authenticated: (value) {
              return Dashboard(welcome: value);
            },
            unAuthenticated: (){
              return Login();
            }
          );
        },
      ),
    );
  }
}

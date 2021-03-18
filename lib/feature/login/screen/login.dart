import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starter_kit/core/components/custom_build_form.dart';
import 'package:starter_kit/core/components/custom_button.dart';
import 'package:starter_kit/core/config/routes.gr.dart';
import 'package:starter_kit/core/constants/Assets.dart';
import 'package:starter_kit/core/constants/ErrorMessage.dart';
import 'package:starter_kit/core/constants/Strings.dart';
import 'package:starter_kit/core/constants/Theme.dart';
import 'package:starter_kit/feature/authentication/cubit/authentication_cubit.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/feature/login/cubit/login_cubit.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthenticationCubit>()..appStarted(),
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            unAuthenticated: () => LoginForm(),
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () => SizedBox(),
              loading: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Menunggu")
                        ],
                      ),
                    ),
                  ),
              success: (){
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                AutoRouter.of(context).replaceAll([DashboardRoute(index: 0)]);
              },
              failure: (message) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text(ErrorMessage.errorMessage(message ?? "Kesalahan")),
                  ),
                );
              });
        },
        child: BuildLoginForm(),
      ),
    );
  }
}

class BuildLoginForm extends StatefulWidget {
  const BuildLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _BuildLoginFormState createState() => _BuildLoginFormState();
}

class _BuildLoginFormState extends State<BuildLoginForm> {
  TextEditingController? username;
  TextEditingController? password;
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    _obscure = true;
  }

  @override
  void dispose() {
    super.dispose();
    username?.dispose();
    password?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.appName,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Themes.kPrimaryColor),
              ),
              Text(
                Strings.tagLine,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(Assets.loginAsset),
              ),
              CustomBuildForm(
                label: Strings.username,
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(hintText: Strings.username),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomBuildForm(
                label: Strings.password,
                child: TextFormField(
                  controller: password,
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    hintText: Strings.password,
                    suffixIcon: _obscure
                        ? InkWell(
                            onTap: () {
                              _obscure = !_obscure;
                              setState(() {});
                            },
                            child: Icon(Icons.visibility_off),
                          )
                        : InkWell(
                            onTap: () {
                              _obscure = !_obscure;
                              setState(() {});
                            },
                            child: Icon(Icons.visibility),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                label: Strings.login,
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  context.read<LoginCubit>().login(
                      username: username!.text, password: password!.text);
                },
                color: Themes.kSecondaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

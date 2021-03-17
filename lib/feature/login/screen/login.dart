import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => SizedBox(),
            loading: () => showDialog(
              context: context,
              builder: (_) => Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            initial:(){
              return BuildLoginForm();
            }
          );
        },
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
  @override
  void initState() {
    super.initState();
    username=TextEditingController();
    password= TextEditingController();
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
      appBar: AppBar(title: Text("SSS"),),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: "Username"
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<LoginCubit>().login(username: username!.text,password: password!.text);
                    },
                    child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}

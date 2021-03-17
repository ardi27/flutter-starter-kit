import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/feature/authentication/cubit/authentication_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/feature/login/repository/login_repository.dart';
part 'login_state.dart';
part "login_cubit.freezed.dart";

@injectable
class LoginCubit extends Cubit<LoginState> {
  final AuthenticationCubit authenticationCubit;
  final LoginRepository loginRepository;
  LoginCubit({required this.authenticationCubit,required this.loginRepository}) : super(LoginState.initial());
  Future login({required String username,required String password})async{
    emit(LoginState.loading());
    try{
      String token=await loginRepository.login(username: username, password: password);
      emit(LoginState.success());
      authenticationCubit.login(token: token);
    }catch(e){
      print(e.toString());
    }
  }
}

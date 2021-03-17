import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/core/constants/PreferencesKeys.dart';
import 'package:starter_kit/core/utils/secure_store.dart';
part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

@injectable
class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.initial());
  Future login({required String token})async{
    emit(AuthenticationState.authenticated(token: token));
  }
  Future appStarted()async{
    emit(AuthenticationState.loading());
    try{
      String? token=await SecureStore().readValue(key: PreferencesKeys.token);
      if(token==null){
        emit(AuthenticationState.unAuthenticated());
      }else{
        emit(AuthenticationState.authenticated(token: token));
      }
    }catch(e){
      print(e.toString());
      emit(AuthenticationState.failure());
    }
  }
}

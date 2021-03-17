part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState{
  const factory LoginState.initial()=_InitialState;
  const factory LoginState.loading()=_LoadingState;
  const factory LoginState.failure({String? message})=_FailureState;
  const factory LoginState.success()=_SuccessState;
}

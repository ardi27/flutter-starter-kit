part of 'authentication_cubit.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial()=_InitialState;
  const factory AuthenticationState.authenticated({required String token})=_AuthenticatedState;
  const factory AuthenticationState.unAuthenticated()=_UnAuthenticatedState;
  const factory AuthenticationState.loading()=_LoadingState;
  const factory AuthenticationState.failure()=_FailureState;
}

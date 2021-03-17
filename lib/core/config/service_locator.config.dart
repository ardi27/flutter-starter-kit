// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/authentication/cubit/authentication_cubit.dart' as _i3;
import '../../feature/counter/cubit/counter_cubit.dart' as _i4;
import '../../feature/login/cubit/login_cubit.dart' as _i9;
import '../../feature/login/repository/login_repository.dart' as _i7;
import '../networks/http_service.dart' as _i5;
import '../networks/logging_interceptors.dart' as _i6;
import '../utils/shared_preferences_helper.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthenticationCubit>(() => _i3.AuthenticationCubit());
  gh.factory<_i4.CounterCubit>(() => _i4.CounterCubit());
  gh.lazySingleton<_i5.HttpService>(() => _i5.HttpService());
  gh.lazySingleton<_i6.LoggingInterceptors>(() => _i6.LoggingInterceptors());
  gh.lazySingleton<_i7.LoginRepository>(() => _i7.LoginRepository());
  gh.lazySingleton<_i8.Prefs>(() => _i8.Prefs());
  gh.factory<_i9.LoginCubit>(() => _i9.LoginCubit(
      authenticationCubit: get<_i3.AuthenticationCubit>(),
      loginRepository: get<_i7.LoginRepository>()));
  return get;
}

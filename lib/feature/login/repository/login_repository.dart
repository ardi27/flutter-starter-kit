import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/core/config/url.dart';
import 'package:starter_kit/core/constants/PreferencesKeys.dart';
import 'package:starter_kit/core/networks/http_service.dart';
import 'package:starter_kit/core/utils/secure_store.dart';

@lazySingleton
class LoginRepository extends HttpService {
  Future login({required String username, required String password}) async {
    try {
      Response response = await post(
        Url.loginUrl,
        {
          "username": username,
          "password": password,
        },
      );
      String? token = response.data['results'];
      await SecureStore().writeValue(key: PreferencesKeys.token, value: token!);
      return token;
    } catch (e) {
      throw Exception(e);
    }
  }
}

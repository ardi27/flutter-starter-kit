import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/core/config/url.dart';
import 'package:starter_kit/core/networks/http_service.dart';

@lazySingleton
class LoginRepository extends HttpService{
  Future login({required String username,required String password})async{
    try{
      Response response= await get(Url.loginUrl);
      String? token=response.data['results'];
      return token;
    }catch(e){
      throw Exception(e);
    }
  }
}
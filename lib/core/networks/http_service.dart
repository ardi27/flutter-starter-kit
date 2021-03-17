import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/core/config/service_locator.dart';
import 'package:starter_kit/core/config/url.dart';
import 'package:starter_kit/core/networks/logging_interceptors.dart';

@lazySingleton
class HttpService{
  Dio? dio=getIt<LoggingInterceptors>().dio;
  Future get(String url)async{
    try{
      Response response=await dio!.get(Url.baseUrl+url);
      return response;
    }catch(e){
      throw Exception(e);
    }
  }
  Future post(String url,dynamic data)async{
    try{
      Response response = await dio!.post(Url.baseUrl+url,data:data);
      return response;
    }catch(e){
      throw Exception(e);
    }
  }
}
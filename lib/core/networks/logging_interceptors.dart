import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_kit/core/constants/ErrorMessage.dart';

@lazySingleton
class LoggingInterceptors {
  Dio? dio;
  LoggingInterceptors() {
    print("init Dio");
    dio = Dio(
        BaseOptions(
          connectTimeout: 20000,
          receiveTimeout: 20000,
          contentType: "application/json;charset=utf-8",
        )
    );
    dio?.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) => onRequest(options),
        onError: (DioError error) => onError(error),
        onResponse: (Response response) => onResponse(response)
    ));
  }

  Future<RequestOptions> onRequest(RequestOptions options) async {
    print("on request");
    return options;
  }

  Future onError(DioError dioError) async {
    print(
        "<-- ${dioError.message}");
    print(
        "${dioError.response != null
            ? dioError.response?.data
            : 'Unknown Error'}");
    print("<-- End error");
    if (dioError.response?.statusCode == 417) {
      throw Exception(ErrorMessage.errorFormValidation);
    }
  }
  Future onResponse(Response response) async {
    print("url : ${response.request.path}");
    print("data : ${response.data}");
  }
}
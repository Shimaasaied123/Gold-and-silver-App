import 'package:dio/dio.dart';
import 'package:goldy/core/networking/api_constant.dart';

class DioHelper{
  static late Dio dio;
  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds:5),
        receiveTimeout: Duration(seconds: 5),
        headers: {
          "Accept":'application/json','user-Agent':'Mozilla/5.0'
        }
      )
    );
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  })
  async {
    return await dio.get(endPoint, queryParameters: query);
  }
}
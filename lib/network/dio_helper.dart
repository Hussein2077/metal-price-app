import 'package:dio/dio.dart';
class DioHelper{
  static Dio? dio;
  static init()async{
    //https://www.goldapi.io/api/XAU/EGP/
dio=Dio(BaseOptions(
  baseUrl: 'https://www.goldapi.io/api/',
  receiveDataWhenStatusError: true,
));
  }
static  Future<Response> getData(String url){
    dio!.options.headers= {

    'x-access-token':'goldapi-ddpfrlf1abhry-io'
    };
    return dio!.get(url);
  }


}
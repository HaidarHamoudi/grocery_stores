import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:grocery_stores/app/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String APPLICATION_JSONValue = "application/json; charset=utf-8";
const String CONTENT_TYPE = "Content-Type";
const String ACCEPTValue = "*/*";
const String ACCEPT = 'Accept';
const String AcceptEncoding = 'Accept-Encoding';
const String AcceptEncodingValue = 'gzip, deflate, br';
const String SECRETKEY = 'secretKey';
const String SECRETKEYValue = 'TsTForBLiveOoOo';

class DioFactory {
  Future<Dio> getDio() async {
    Dio dio = Dio();
    int _timeOut = 60 * 1000;

    Map<String, String> headers = {
      SECRETKEY: SECRETKEYValue,
    };
    Map<String,String> queryParameters ={
      'deviceKind':'android'
    };

    dio.options = BaseOptions(
      queryParameters: queryParameters,
      baseUrl: Constants.baseUrl,
      connectTimeout: _timeOut,
      receiveTimeout: _timeOut,
      headers: headers,
    );

/*
    if (kReleaseMode) {
      print("release mode no logs");
    } else {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ));
    }*/

    return dio;
  }
}

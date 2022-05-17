import 'package:dio/dio.dart' hide Headers;
import 'package:grocery_stores/app/constants.dart';
import 'package:grocery_stores/data/responses/responses.dart';
import 'package:retrofit/http.dart';

part 'app_api.g.dart';

const String APPLICATION_JSONValue = "application/json; charset=utf-8";
const String CONTENT_TYPE = "Content-Type";
const String ACCEPTValue = "*/*";
const String ACCEPT = 'Accept';
const String AcceptEncoding = 'Accept-Encoding';
const String AcceptEncodingValue = 'gzip, deflate, br';
const String SECRETKEY = 'secretKey';
const String SECRETKEYValue = 'TsTForBLiveOoOo';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("/shop/test/find/all/shop")
  Future<ShopsResponse> getShops();
}

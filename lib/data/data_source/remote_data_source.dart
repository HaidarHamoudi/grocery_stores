import 'package:grocery_stores/data/network/app_api.dart';
import 'package:grocery_stores/data/responses/responses.dart';

import '../../app/constants.dart';


abstract class RemoteDataSource {
  Future<ShopsResponse> getShops();
}

class RemoteDataSourceImplementer implements RemoteDataSource {

  final AppServiceClient appServiceClient;

  RemoteDataSourceImplementer({required this.appServiceClient});

  @override
  Future<ShopsResponse> getShops() async {
    return await appServiceClient.getShops();
  }
}

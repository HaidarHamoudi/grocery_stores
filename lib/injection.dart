import 'package:get_it/get_it.dart';
import 'package:grocery_stores/data/data_source/remote_data_source.dart';
import 'package:grocery_stores/data/network/app_api.dart';
import 'package:grocery_stores/data/network/network_info.dart';
import 'package:grocery_stores/data/repository/repository_impl.dart';
import 'package:grocery_stores/domain/usecase/shops_usecase.dart';
import 'package:grocery_stores/presentation/shops/bloc/shops_bloc.dart';
import 'package:grocery_stores/domain/repository/repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'data/network/dio_factory.dart';

final g = GetIt.instance;

Future<void> init() async {
  // Bloc
  g.registerFactory(() => ShopsBloc(shops: g()));
  // UseCase
  g.registerLazySingleton(() => ShopsUseCase(repository: g()));
  // Repository
  g.registerLazySingleton<Repository>(
      () => RepositoryImplementer(remoteDataSource: g(), networkInfo: g()));
  // DataSource
  g.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImplementer(appServiceClient: g()));

  // AppServiceClient
  g.registerLazySingleton<DioFactory>(() => DioFactory());

  final dio = await g<DioFactory>().getDio();
  g.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  g.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(internetConnectionChecker: InternetConnectionChecker()));
}

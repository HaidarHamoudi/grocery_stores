import 'package:dartz/dartz.dart';
import 'package:grocery_stores/data/data_source/remote_data_source.dart';
import 'package:grocery_stores/data/mapper/mapper.dart';
import 'package:grocery_stores/data/network/error_handler.dart';
import 'package:grocery_stores/data/network/failure.dart';
import 'package:grocery_stores/data/network/network_info.dart';
import 'package:grocery_stores/data/responses/responses.dart';
import 'package:grocery_stores/domain/model/model.dart';
import 'package:grocery_stores/domain/repository/repository.dart';

class RepositoryImplementer extends Repository {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RepositoryImplementer(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, ShopsObject>> getShops() async {
    if (await networkInfo.isConnected) {
      print('------------');
      final ShopsResponse response = await remoteDataSource.getShops();
      print('=======$response');
      return Right(response.toDomain());
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}

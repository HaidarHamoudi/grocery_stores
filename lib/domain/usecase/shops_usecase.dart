import 'package:dartz/dartz.dart';
import 'package:grocery_stores/data/network/failure.dart';
import 'package:grocery_stores/domain/model/model.dart';
import 'package:grocery_stores/domain/repository/repository.dart';
import 'package:grocery_stores/domain/usecase/base_usecase.dart';

class ShopsUseCase extends BaseUseCase<ShopsObject,NoParams>{
  final Repository repository;

  ShopsUseCase({required this.repository});

  @override
  Future<Either<Failure, ShopsObject>> call(NoParams params) async{
    return await repository.getShops();
  }
}
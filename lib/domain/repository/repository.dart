import 'package:dartz/dartz.dart';
import 'package:grocery_stores/data/network/failure.dart';
import 'package:grocery_stores/domain/model/model.dart';

abstract class Repository{
  Future<Either<Failure,ShopsObject>> getShops();
}
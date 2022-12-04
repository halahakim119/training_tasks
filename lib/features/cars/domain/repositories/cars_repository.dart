import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/cars/domain/entities/cars_entity.dart';

abstract class CarsRepository {
  Future<Either<Failure, CarsEntity>> getCarsData();
}

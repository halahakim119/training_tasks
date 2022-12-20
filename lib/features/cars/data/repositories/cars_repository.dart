import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:training_tasks/features/cars/domain/repositories/cars_repository.dart'
    as domain;

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/cars_entity.dart';
import '../datasources/cars_data_source.dart';

class CarsRepository implements domain.CarsRepository {
  final CarsDataSource carsDataSource;

  CarsRepository({required this.carsDataSource});
  @override
  Future<Either<Failure, CarsEntity>> getCarsData() async {
    try {
      final result = await carsDataSource.getCars();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/exception.dart';
import 'package:training_tasks/core/network/network_info.dart';

import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/cars/data/datasources/cars_local_data_source.dart';
import 'package:training_tasks/features/cars/data/datasources/cars_remote_data_source.dart';
import 'package:training_tasks/features/cars/data/models/cars_model.dart';

import 'package:training_tasks/features/cars/domain/repositories/cars_repository.dart'
    as domain;

import '../../domain/entities/cars_entity.dart';

class CarsRepository implements domain.CarsRepository {
  final CarsRemoteDataSource remoteDataSource;
  final CarsLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CarsRepository(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, CarsModel>> getCarsData() async {
    if (await networkInfo.isConnected) {
      print('u r online');
      try {
        final remoteCars = await remoteDataSource.getAllCars();
        localDataSource.cacheCars(remoteCars);
        return Right(remoteCars);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        print('u r offonline');
        final localCarss = await localDataSource.getCachedCars();
        return Right(localCarss);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}

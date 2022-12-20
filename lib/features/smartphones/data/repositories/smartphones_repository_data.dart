import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/smartphones_entity.dart';
import '../../domain/repositories/smartphones_repository.dart';
import '../datasources/smartphones_data_source.dart';

class SmartphonesRepositoryData implements SmartphonesRepository {
  final SmartphonesDataSource smartphonesDataSource;

  SmartphonesRepositoryData({required this.smartphonesDataSource});
  @override
  Future<Either<Failure, SmartphonesEntity>> getSmartphonesData() async {
    try {
      final result = await smartphonesDataSource.getSmartphones();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

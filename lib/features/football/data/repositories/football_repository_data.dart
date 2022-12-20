import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/football_main_entity.dart';
import '../../domain/repositories/football_repository_domain.dart';
import '../datasources/football_data_source.dart';

class FootballRepositoryData implements FootballRepositoryDomain {
  final FootballDataSource footballDataSource;

  FootballRepositoryData({required this.footballDataSource});
  @override
  Future<Either<Failure, FootballMainEntity>> getData() async {
    try {
      final result = await footballDataSource.getFootballData();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

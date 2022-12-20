import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:training_tasks/features/random_joke/data/datasouces/random_joke_data_source.dart';
import 'package:training_tasks/features/random_joke/domain/entities/random_joke_entity.dart';

import '../../domain/repositories/randome_joke_repository_domain.dart';
import '/core/error/exception.dart';
import '/core/error/failure.dart';

class RandomJokeRepositoryData implements RandomeJokeRepositoryDomain {
  final JokesDataSource jokesDataSource;

  RandomJokeRepositoryData({required this.jokesDataSource});
  @override
  Future<Either<Failure, RandomJokeEntity>> getData() async {
    try {
      final result = await jokesDataSource.getJokes();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

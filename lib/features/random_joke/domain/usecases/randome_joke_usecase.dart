import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/random_joke_entity.dart';
import '../repositories/randome_joke_repository_domain.dart';


class GetAllJokesDataUsecase {
  final RandomeJokeRepositoryDomain randomeJokeRepositoryDomain;

  GetAllJokesDataUsecase({required this.randomeJokeRepositoryDomain});

  Future<Either<Failure, RandomJokeEntity>> call() async {
    return await randomeJokeRepositoryDomain.getData();
  }
}

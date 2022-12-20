import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/random_joke_entity.dart';

abstract class RandomeJokeRepositoryDomain {
  Future<Either<Failure, RandomJokeEntity>> getData();
}

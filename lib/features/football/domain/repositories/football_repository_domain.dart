import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/football/domain/entities/football_main_entity.dart';

abstract class FootballRepositoryDomain {
  Future<Either<Failure, FootballMainEntity>> getData();
}

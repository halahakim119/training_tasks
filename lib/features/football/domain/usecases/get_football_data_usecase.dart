import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/football/domain/entities/football_main_entity.dart';
import 'package:training_tasks/features/football/domain/repositories/football_repository_domain.dart';

class GetFootballDataUsecase {
  final FootballRepositoryDomain footballRepositoryDomain;

  GetFootballDataUsecase({required this.footballRepositoryDomain});

  Future<Either<Failure, FootballMainEntity>> call() async {
    return await footballRepositoryDomain.getData();
  }
}

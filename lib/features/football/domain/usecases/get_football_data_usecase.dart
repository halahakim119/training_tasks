import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/football_main_entity.dart';
import '../repositories/football_repository_domain.dart';

class GetFootballDataUsecase {
  final FootballRepositoryDomain footballRepositoryDomain;

  GetFootballDataUsecase({required this.footballRepositoryDomain});

  Future<Either<Failure, FootballMainEntity>> call() async {
    return await footballRepositoryDomain.getData();
  }
}

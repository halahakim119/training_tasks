import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/football_main_entity.dart';

abstract class FootballRepositoryDomain {
  Future<Either<Failure, FootballMainEntity>> getData();
}

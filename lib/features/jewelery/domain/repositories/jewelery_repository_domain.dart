import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/jewelery_entity.dart';

abstract class JeweleryRepositoryDomain {
  Future<Either<Failure, List<JeweleryEntity>>> getData();
}

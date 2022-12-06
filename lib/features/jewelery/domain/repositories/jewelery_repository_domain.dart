import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/jewelery/domain/entities/jewelery_entity.dart';

abstract class JeweleryRepositoryDomain {
  Future<Either<Failure, List<JeweleryEntity>>> getData();
}

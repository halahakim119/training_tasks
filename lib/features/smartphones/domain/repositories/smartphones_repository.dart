import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/smartphones/domain/entities/smartphones_entity.dart';

abstract class SmartphonesRepository {
  Future<Either<Failure, SmartphonesEntity>> getSmartphonesData();
}

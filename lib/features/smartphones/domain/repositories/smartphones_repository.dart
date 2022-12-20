import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/smartphones_entity.dart';

abstract class SmartphonesRepository {
  Future<Either<Failure, SmartphonesEntity>> getSmartphonesData();
}

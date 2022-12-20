import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/photo_entity.dart';

abstract class PhotoRepositoryDomain {
  Future<Either<Failure, List<PhotoEntity>>> getData();
}

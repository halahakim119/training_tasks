import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '/features/albums/domain/entities/albums_entity.dart';

abstract class AlbumsRepositoryDomain {
  Future<Either<Failure, List<AlbumsEntity>>> getData();
}

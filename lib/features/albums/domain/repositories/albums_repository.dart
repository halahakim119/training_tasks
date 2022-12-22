import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/all_albums_entity.dart';

abstract class AlbumsRepository{
  Future<Either<Failure, AllAlbumsEntity>> getData();
}

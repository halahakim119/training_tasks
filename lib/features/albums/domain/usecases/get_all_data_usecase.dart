import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/albums_entity.dart';
import '../repositories/albums_repository_domain.dart';

class GetAllDataUsecase {
  final AlbumsRepositoryDomain albumsRepositoryDomain;

  GetAllDataUsecase({required this.albumsRepositoryDomain});

  Future<Either<Failure, List<AlbumsEntity>>> call() async {
    return await albumsRepositoryDomain.getData();
  }
}

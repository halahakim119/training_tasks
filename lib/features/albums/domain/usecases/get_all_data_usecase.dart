import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/all_albums_entity.dart';
import '../repositories/albums_repository.dart';

class GetAllDataUsecase {
  final AlbumsRepository albumsRepositoryDomain;

  GetAllDataUsecase({required this.albumsRepositoryDomain});

  Future<Either<Failure, AllAlbumsEntity>> call() async {
    return await albumsRepositoryDomain.getData();
  }
}

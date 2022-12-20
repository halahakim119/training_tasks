import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/photo_entity.dart';
import '../repositories/photo_repository_domain.dart';

class GetPhotoDataUsecase {
  final PhotoRepositoryDomain photoRepositoryDomain;

  GetPhotoDataUsecase({required this.photoRepositoryDomain});

  Future<Either<Failure, List<PhotoEntity>>> call() async {
    return await photoRepositoryDomain.getData();
  }
}

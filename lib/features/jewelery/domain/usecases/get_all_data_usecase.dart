import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/jewelery_entity.dart';
import '../repositories/jewelery_repository_domain.dart';

class GetAllDataUsecase {
  final JeweleryRepositoryDomain jeweleryRepositoryDomain;

  GetAllDataUsecase({required this.jeweleryRepositoryDomain});

  Future<Either<Failure, List<JeweleryEntity>>> call() async {
    return await jeweleryRepositoryDomain.getData();
  }
}

import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/jewelery/domain/entities/jewelery_entity.dart';
import 'package:training_tasks/features/jewelery/domain/repositories/jewelery_repository_domain.dart';

class GetAllDataUsecase {
  final JeweleryRepositoryDomain jeweleryRepositoryDomain;

  GetAllDataUsecase({required this.jeweleryRepositoryDomain});

  Future<Either<Failure, List<JeweleryEntity>>> call() async {
    return await jeweleryRepositoryDomain.getData();
  }
}

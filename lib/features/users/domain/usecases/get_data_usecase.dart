import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';

import 'package:training_tasks/features/users/domain/entities/user.dart';
import 'package:training_tasks/features/users/domain/repositories/user_repository.dart';

class GetDataUsecase {
  final UserRepository repository;
  GetDataUsecase({required this.repository});

  Future<Either<Failure, List<UsersEntity>>> call() async {
    return await repository.getData();
  }
}

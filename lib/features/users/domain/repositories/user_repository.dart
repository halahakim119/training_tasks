import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/users/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UsersEntity>>> getData();
}

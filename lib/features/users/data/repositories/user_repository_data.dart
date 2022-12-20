import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/users_data_sources.dart';

class UserRepositoryData implements UserRepository {
  final UsersDataSource usersDataSource;

  UserRepositoryData({required this.usersDataSource});
  @override
  Future<Either<Failure, List<UsersEntity>>> getData() async {
    try {
      final result = await usersDataSource.getUsers();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

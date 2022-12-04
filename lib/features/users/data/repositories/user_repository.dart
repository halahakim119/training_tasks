import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/exception.dart';
import 'package:training_tasks/core/network/network_info.dart';

import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/users/data/datasources/user_local_data_source.dart';
import 'package:training_tasks/features/users/data/datasources/user_remote_data_source.dart';
import 'package:training_tasks/features/users/data/models/user.dart';

import 'package:training_tasks/features/users/domain/repositories/user_repository.dart'
    as DomainRepo;


class UserRepository implements DomainRepo.UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  UserRepository(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.networkInfo});
  @override
  Future<Either<Failure, List<User>>> getData() async {
    if (await networkInfo.isConnected) {
      print('u r online');
      try {
        final remoteUsers = await remoteDataSource.getAllUsers();
        localDataSource.cacheUsers(remoteUsers);
        return Right(remoteUsers);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        print('u r offonline');
        final localUsers = await localDataSource.getCachedUsers();
        return Right(localUsers);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}

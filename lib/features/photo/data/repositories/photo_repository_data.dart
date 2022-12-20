import 'dart:async';

import 'package:dartz/dartz.dart';

import '/core/error/exception.dart';
import '/core/error/failure.dart';
import '../../domain/entities/photo_entity.dart';
import '../../domain/repositories/photo_repository_domain.dart';
import '../datasources/photo_data_source.dart';

class PhotoRepositoryData implements PhotoRepositoryDomain {
  final PhotoDataSource photoDataSource;

  PhotoRepositoryData({required this.photoDataSource});
  @override
  Future<Either<Failure, List<PhotoEntity>>> getData() async {
    try {
      final result = await photoDataSource.getPhotoData();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

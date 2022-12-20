import 'dart:async';

import 'package:dartz/dartz.dart';

import '/core/error/exception.dart';
import '/core/error/failure.dart';
import '../../domain/entities/albums_entity.dart';
import '../../domain/repositories/albums_repository_domain.dart';
import '../datasources/albums_data_source.dart';

class AlbumsRepositoryData implements AlbumsRepositoryDomain {
  final AlbumsDataSource albumsDataSource;

  AlbumsRepositoryData({required this.albumsDataSource});
  @override
  Future<Either<Failure, List<AlbumsEntity>>> getData() async {
    try {
      final result = await albumsDataSource.getAlbums();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

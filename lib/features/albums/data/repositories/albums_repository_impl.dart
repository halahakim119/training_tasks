import 'dart:async';

import 'package:dartz/dartz.dart';

import '../models/all_albums_model.dart';
import '/core/error/exception.dart';
import '/core/error/failure.dart';
import '../../domain/entities/all_albums_entity.dart';
import '../../domain/repositories/albums_repository.dart';
import '../datasources/albums_data_source.dart';

class AlbumsRepositoryImpl implements AlbumsRepository {
  final AlbumsDataSource albumsDataSource;

  AlbumsRepositoryImpl({required this.albumsDataSource});
  @override
  Future<Either<Failure, AllAlbumsEntity>> getData() async {
    try {
      final data = await albumsDataSource.getAlbums();
      var map = <String, Object>{'albums': data};
      final AllAlbumsModel result = AllAlbumsModel.fromJson(map);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

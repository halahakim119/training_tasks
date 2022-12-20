import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/jewelery_entity.dart';
import '../../domain/repositories/jewelery_repository_domain.dart';
import '../datasources/jewelery_data_source.dart';

class JeweleryRepositoryData implements JeweleryRepositoryDomain {
  final JeweleryDataSource jeweleryDataSource;

  JeweleryRepositoryData({required this.jeweleryDataSource});
  @override
  Future<Either<Failure, List<JeweleryEntity>>> getData() async {
    try {
      final result = await jeweleryDataSource.getJewelery();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

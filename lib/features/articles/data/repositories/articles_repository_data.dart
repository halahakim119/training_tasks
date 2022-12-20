import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/articles_main_entity.dart';
import '../../domain/repositories/articles_repository_domain.dart';
import '../datasources/articles_data_source.dart';

class ArticlesRepositoryData implements ArticlesRepositoryDomain {
  final ArticlesDataSource articlesDataSource;

  ArticlesRepositoryData({required this.articlesDataSource});
  @override
  Future<Either<Failure, ArticlesMainEntity>> getData() async {
    try {
      final result = await articlesDataSource.getArticles();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

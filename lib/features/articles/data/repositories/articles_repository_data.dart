import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/articles_main_entity.dart';
import '../../domain/repositories/articles_repository_domain.dart';
import '../datasources/articles_data_source.dart';
import '../models/articles_main_model.dart';

class ArticlesRepositoryData implements ArticlesRepositoryDomain {
  final ArticlesDataSource articlesDataSource;

  ArticlesRepositoryData({required this.articlesDataSource});
  @override
  Future<Either<Failure, ArticlesMainEntity>> getData() async {
    try {
      final data = await articlesDataSource.getArticles();
       final ArticlesMainModel result = ArticlesMainModel.fromJson(data);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

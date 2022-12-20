import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/articles_main_entity.dart';
import '../repositories/articles_repository_domain.dart';

class GetAllArticlesDataUsecase {
  final ArticlesRepositoryDomain articlesRepositoryDomain;

  GetAllArticlesDataUsecase({required this.articlesRepositoryDomain});

  Future<Either<Failure, ArticlesMainEntity>> call() async {
    return await articlesRepositoryDomain.getData();
  }
}

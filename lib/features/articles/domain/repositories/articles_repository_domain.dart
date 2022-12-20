import 'package:dartz/dartz.dart';

import '/core/error/failure.dart';
import '../entities/articles_main_entity.dart';

abstract class ArticlesRepositoryDomain {
  Future<Either<Failure, ArticlesMainEntity>> getData();
}

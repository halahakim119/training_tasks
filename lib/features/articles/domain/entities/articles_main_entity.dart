import 'package:equatable/equatable.dart';

import 'articles_entity.dart';

class ArticlesMainEntity extends Equatable {
  final List<ArticlesEntity>? articles;
  const ArticlesMainEntity({this.articles});

  @override
  List<Object?> get props => [articles];
}

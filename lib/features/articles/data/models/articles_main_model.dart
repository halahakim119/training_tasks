import '../../domain/entities/articles_main_entity.dart';
import 'articles_model.dart';

class ArticlesMainModel extends ArticlesMainEntity {
  const ArticlesMainModel({List<ArticlesModel>? articles})
      : super(articles: articles);

  Map<String, Object?> toJson() {
    List<ArticlesModel>? articles;
    return {
      'articles':
          articles?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  factory ArticlesMainModel.fromJson(Map<String, Object?> json) {
    return ArticlesMainModel(
        articles: json['articles'] == null
            ? null
            : (json['articles'] as List)
                .map<ArticlesModel>((data) =>
                    ArticlesModel.fromJson(data as Map<String, Object?>))
                .toList());
  }
}

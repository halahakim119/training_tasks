import '../../domain/entities/articles_entity.dart';
import 'source_model.dart';

class ArticlesModel extends ArticlesEntity {
  const ArticlesModel(
      {SourceModel? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content})
      : super(
            source: source,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content);

  Map<String, Object?> toJson() {
    SourceModel? source;
    return {
      'source': source?.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content
    };
  }

  factory ArticlesModel.fromJson(Map<String, Object?> json) {
    return ArticlesModel(
        source: json['source'] == null
            ? null
            : SourceModel.fromJson(json['source'] as Map<String, Object?>),
        author: json['author'] == null ? null : json['author'] as String,
        title: json['title'] == null ? null : json['title'] as String,
        description:
            json['description'] == null ? null : json['description'] as String,
        url: json['url'] == null ? null : json['url'] as String,
        urlToImage:
            json['urlToImage'] == null ? null : json['urlToImage'] as String,
        publishedAt:
            json['publishedAt'] == null ? null : json['publishedAt'] as String,
        content: json['content'] == null ? null : json['content'] as String);
  }
}

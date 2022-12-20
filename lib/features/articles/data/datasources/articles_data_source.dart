import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/articles_main_model.dart';

abstract class ArticlesDataSource {
  Future<ArticlesMainModel> getArticles();
}

class ArticlesDataSourceImpl implements ArticlesDataSource {
  @override
  Future<ArticlesMainModel> getArticles() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=tesla&from=2022-11-19&sortBy=publishedAt&apiKey=ad3148a76a954a9099370e2ba794bb9b'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final ArticlesMainModel result = ArticlesMainModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

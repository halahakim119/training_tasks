import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class ArticlesDataSource {
  Future getArticles();
}

class ArticlesDataSourceImpl implements ArticlesDataSource {
  @override
  Future getArticles() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=tesla&from=2022-12-22&sortBy=publishedAt&apiKey=ad3148a76a954a9099370e2ba794bb9b'));

    final decodedJson = json.decode(response.body);

    return decodedJson;
  }
}

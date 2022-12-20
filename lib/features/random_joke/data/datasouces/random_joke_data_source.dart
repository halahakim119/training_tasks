import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/random_joke_model.dart';

abstract class JokesDataSource {
  Future<RandomJokeModel> getJokes();
}

class JokesDataSourceImpl implements JokesDataSource {
  @override
  Future<RandomJokeModel> getJokes() async {
    final response = await http
        .get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final RandomJokeModel result = RandomJokeModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

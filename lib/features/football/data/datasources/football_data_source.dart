import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/football_main_model.dart';

abstract class FootballDataSource {
  Future<FootballMainModel> getFootballData();
}

class FootballDataSourceImpl implements FootballDataSource {
  @override
  Future<FootballMainModel> getFootballData() async {
    final response =
        await http.get(Uri.parse('https://myfakeapi.com/api/football'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final FootballMainModel result = FootballMainModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

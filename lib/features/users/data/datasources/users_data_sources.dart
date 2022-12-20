import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/user_model.dart';

abstract class UsersDataSource {
  Future<List<UsersModel>> getUsers();
}

class UsersDataSourceImpl implements UsersDataSource {
  @override
  Future<List<UsersModel>> getUsers() async {
    final response = await http
        .get(Uri.parse('https://random-data-api.com/api/v2/users?size=40&is_xml=true'));

    if (response.statusCode == 200) {
      final decodedJson =
          json.decode(response.body).cast<Map<String, dynamic>>();
      final List<UsersModel> result = decodedJson
          .map<UsersModel>((json) => UsersModel.fromJson(json))
          .toList();
      return result;
    } else {
      throw ServerException();
    }
  }
}

import 'dart:convert';
import 'package:training_tasks/core/strings/strings.dart';

import '../../../../core/error/exception.dart';
import 'package:training_tasks/features/users/data/models/user.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class UserRemoteDataSource {
  Future<List<User>> getAllUsers();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<List<User>> getAllUsers() async {
    final response = await http.get(Uri.parse(BASE_URL));

    if (response.statusCode == 200) {
      final List decodedJson = json.decode(response.body) as List;
      final List<User> userModels = decodedJson
          .map<User>((jsonUserModel) => User.fromJson(jsonUserModel))
          .toList();

      return userModels;
    } else {
      throw ServerException();
    }
  }
}

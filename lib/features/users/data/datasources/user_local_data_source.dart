import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_tasks/features/users/data/models/user.dart';

import '../../../../core/error/exception.dart';

abstract class UserLocalDataSource {
  Future<List<User>> getCachedUsers();
  Future<Unit> cacheUsers(List<User> user);
}

const CACHED_USERS = "CACHED_USERS";

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Unit> cacheUsers(List<User> user) {
    List userModelsToJson = user
        .map<Map<String, dynamic>>((userModel) => userModel.toJson())
        .toList();
    sharedPreferences.setString(CACHED_USERS, json.encode(userModelsToJson));
    return Future.value(unit);
  }

  @override
  Future<List<User>> getCachedUsers() {
    final jsonString = sharedPreferences.getString(CACHED_USERS);
    if (jsonString != null) {
      List decodeJsonData = json.decode(jsonString);
      List<User> jsonToUserModels = decodeJsonData
          .map<User>((jsonUserModel) => User.fromJson(jsonUserModel))
          .toList();
      return Future.value(jsonToUserModels);
    } else {
      throw EmptyCacheException();
    }
  }
}

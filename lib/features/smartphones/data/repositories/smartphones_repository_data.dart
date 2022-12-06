import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/exception.dart';
import 'package:training_tasks/features/smartphones/data/models/smartphones_model.dart';

import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/smartphones/domain/repositories/smartphones_repository.dart';

class SmartphonesRepositoryData implements SmartphonesRepository {
  @override
  Future<Either<Failure, SmartphonesModel>> getSmartphonesData() async {
    final response = await http
        .get(Uri.parse('https://dummyjson.com/products/category/smartphones'));

    if (response.statusCode == 200) {
      final  decodedJson =  json.decode(response.body);
      final SmartphonesModel result = SmartphonesModel.fromJson(decodedJson);
      return Right(result);
    } else {
      throw left(ServerException());
    }
  }
}

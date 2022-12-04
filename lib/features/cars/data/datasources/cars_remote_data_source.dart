import 'dart:convert';
import 'package:training_tasks/core/strings/strings.dart';
import 'package:training_tasks/features/cars/data/models/cars_model.dart';

import '../../../../core/error/exception.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class CarsRemoteDataSource {
  Future<CarsModel> getAllCars();
}

class CarsRemoteDataSourceImpl implements CarsRemoteDataSource {
  @override
  Future<CarsModel> getAllCars() async {
    final response = await http.get(Uri.parse(CARS_URL));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final CarsModel result = CarsModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

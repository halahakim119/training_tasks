import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training_tasks/features/cars/data/models/cars_model.dart';

import '../../../../core/error/exception.dart';

abstract class CarsLocalDataSource {
  Future<CarsModel> getCachedCars();
  Future<Unit> cacheCars(CarsModel cars);
}

const CACHED_CARS = "CACHED_CARS";

class CarsLocalDataSourceImpl implements CarsLocalDataSource {
  final SharedPreferences sharedPreferences;

  CarsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Unit> cacheCars(CarsModel cars) {
    var carsModelsToJson = cars.toJson();
    sharedPreferences.setString(CACHED_CARS, json.encode(carsModelsToJson));
    return Future.value(unit);
  }

  @override
  Future<CarsModel> getCachedCars() {
    final jsonString = sharedPreferences.getString(CACHED_CARS);
    if (jsonString != null) {
       var decodeJsonData = json.decode(jsonString);
      CarsModel jsonToCarsModels = CarsModel.fromJson(decodeJsonData);
      return Future.value(jsonToCarsModels);
    } else {
      throw EmptyCacheException();
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/cars_model.dart';

abstract class CarsDataSource {
  Future<CarsModel> getCars();
}

class CarsDataSourceImpl implements CarsDataSource {
  @override
  Future<CarsModel> getCars() async {
    final response =
        await http.get(Uri.parse('https://myfakeapi.com/api/cars/'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final CarsModel result = CarsModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

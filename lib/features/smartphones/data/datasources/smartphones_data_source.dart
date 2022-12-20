import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/smartphones_model.dart';

abstract class SmartphonesDataSource {
  Future<SmartphonesModel> getSmartphones();
}

class SmartphonesDataSourceImpl implements SmartphonesDataSource {
  @override
  Future<SmartphonesModel> getSmartphones() async {
    final response = await http
        .get(Uri.parse('https://dummyjson.com/products/category/smartphones'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final SmartphonesModel result = SmartphonesModel.fromJson(decodedJson);
      return result;
    } else {
      throw ServerException();
    }
  }
}

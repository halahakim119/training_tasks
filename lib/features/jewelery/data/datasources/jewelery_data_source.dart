import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/jewelery_model.dart';

abstract class JeweleryDataSource {
  Future<List<JeweleryModel>> getJewelery();
}

class JeweleryDataSourceImpl implements JeweleryDataSource {
  @override
  Future<List<JeweleryModel>> getJewelery() async {
    final response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));

    if (response.statusCode == 200) {
      final decodedJson =
          json.decode(response.body).cast<Map<String, dynamic>>();
      final List<JeweleryModel> result = decodedJson
          .map<JeweleryModel>((json) => JeweleryModel.fromJson(json))
          .toList();
      return result;
    } else {
      throw ServerException();
    }
  }
}

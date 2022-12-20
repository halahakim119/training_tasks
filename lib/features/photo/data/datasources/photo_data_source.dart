import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:training_tasks/features/photo/data/models/photo_model.dart';

import '../../../../core/error/exception.dart';

abstract class PhotoDataSource {
  Future<List<PhotoModel>> getPhotoData();
}

class PhotoDataSourceImpl implements PhotoDataSource {
  @override
  Future<List<PhotoModel>> getPhotoData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      final decodedJson =
          json.decode(response.body).cast<Map<String, dynamic>>();
      final List<PhotoModel> result = decodedJson
          .map<PhotoModel>((json) => PhotoModel.fromJson(json))
          .toList();
      return result;
    } else {
      throw ServerException();
    }
  }
}

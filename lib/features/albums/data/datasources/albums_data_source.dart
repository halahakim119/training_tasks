import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/albums_model.dart';

abstract class AlbumsDataSource {
  Future<List<AlbumModel>> getAlbums();
}

class AlbumsDataSourceImpl implements AlbumsDataSource {
  @override
  Future<List<AlbumModel>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      final decodedJson =
          json.decode(response.body).cast<Map<String, dynamic>>();
      final List<AlbumModel> result = decodedJson
          .map<AlbumModel>((json) => AlbumModel.fromJson(json))
          .toList();
      return result;
    } else {
      throw ServerException();
    }
  }
}

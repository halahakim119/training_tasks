import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exception.dart';
import '../models/all_albums_model.dart';

abstract class AlbumsDataSource {
  Future getAlbums();
}

class AlbumsDataSourceImpl implements AlbumsDataSource {
  @override
  Future getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final decodedJson = json.decode(response.body);

    return decodedJson;
  }
}

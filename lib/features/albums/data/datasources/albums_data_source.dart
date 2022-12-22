import 'dart:convert';

import 'package:http/http.dart' as http;

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

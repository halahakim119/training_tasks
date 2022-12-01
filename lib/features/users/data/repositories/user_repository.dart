
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'package:training_tasks/features/users/data/models/user.dart';



class UserRepository {
  final String _baseUrl = "https://random-data-api.com/api/v2/users?size=40&is_xml=true";

  Future<List<User>> getData() async {
    final response = await http.get(Uri.parse(_baseUrl));
    
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}


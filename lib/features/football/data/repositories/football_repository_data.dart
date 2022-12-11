import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/exception.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/football/data/models/football_main_model.dart';
import 'package:training_tasks/features/football/domain/entities/football_main_entity.dart';
import 'package:training_tasks/features/football/domain/repositories/football_repository_domain.dart';

class FootballRepositoryData implements FootballRepositoryDomain {
  @override
  Future<Either<Failure, FootballMainEntity>> getData() async {
    final response =
        await http.get(Uri.parse('https://myfakeapi.com/api/football'));

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      final FootballMainModel result = FootballMainModel.fromJson(decodedJson);
      return Right(result);
    } else {
      throw left(ServerException());
    }
  }
}

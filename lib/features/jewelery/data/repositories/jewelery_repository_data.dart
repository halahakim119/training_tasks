import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:training_tasks/core/error/exception.dart';
import 'package:training_tasks/core/error/failure.dart';
import 'package:training_tasks/features/jewelery/data/models/jewelery_model.dart';
import 'package:training_tasks/features/jewelery/domain/entities/jewelery_entity.dart';
import 'package:training_tasks/features/jewelery/domain/repositories/jewelery_repository_domain.dart';

class JeweleryRepositoryData implements JeweleryRepositoryDomain {
  @override
  Future<Either<Failure, List<JeweleryEntity>>> getData() async {
    final response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));

    if (response.statusCode == 200) {
      final decodedJson =
          json.decode(response.body).cast<Map<String, dynamic>>();
      final List<JeweleryModel> result = decodedJson
          .map<JeweleryModel>((json) => JeweleryModel.fromJson(json))
          .toList();
      print(result);
      return Right(result);
    } else {
      throw left(ServerException());
    }
  }
}

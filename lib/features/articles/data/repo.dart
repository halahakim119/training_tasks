

import 'package:training_tasks/features/articles/data/models/data_model.dart';
import 'package:training_tasks/features/articles/data/network_service.dart';

class Repo {
  NetworkService networkService;
  Repo({required this.networkService});

  Future<DataModel> fetchDataAPI() async {
    try {
      final Map<String, dynamic> data = await networkService.getData();
      final DataModel result = DataModel.fromJson(data);
      return result;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}

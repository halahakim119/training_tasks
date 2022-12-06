import 'package:training_tasks/features/cars/data/models/cars_list_model.dart';
import 'package:training_tasks/features/cars/domain/entities/cars_entity.dart';

class CarsModel extends CarsEntity {
  const CarsModel({List<CarsListModel>? cars}) : super(cars: cars);

  Map<String, Object?> toJson() {
    CarsModel? cars;
    return {'cars': cars?.toJson()};
  }

  factory CarsModel.fromJson(Map<String, Object?> json) {
    return CarsModel(
        cars: (json['cars'] == null
            ? null
            : (json['cars'] as List)
                .map<CarsListModel>((data) =>
                    CarsListModel.fromJson(data as Map<String, Object?>))
                .toList()));
  }
}

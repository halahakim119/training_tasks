import 'package:training_tasks/features/cars/domain/entities/cars_list_entity.dart';

class CarsListModel extends CarsListEntity {
  const CarsListModel(
      {int? id,
      String? car,
      String? carModel,
      String? carColor,
      int? carModelYear,
      String? carVin,
      String? price,
      bool? availability})
      : super(
            id: id,
            car: car,
            carColor: carColor,
            carModel: carModel,
            carModelYear: carModelYear,
            carVin: carVin,
            price: price,
            availability: availability);

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'car': car,
      'car_model': carModel,
      'car_color': carColor,
      'car_model_year': carModelYear,
      'car_vin': carVin,
      'price': price,
      'availability': availability
    };
  }

  factory CarsListModel.fromJson(Map<String, Object?> json) {
    return CarsListModel(
        id: json['id'] == null ? null : json['id'] as int,
        car: json['car'] == null ? null : json['car'] as String,
        carModel: json['car_model'] == null ? null : json['car_model'] as String,
        carColor: json['car_color'] == null ? null : json['car_color'] as String,
        carModelYear:
            json['car_model_year'] == null ? null : json['car_model_year'] as int,
        carVin: json['car_vin'] == null ? null : json['car_vin'] as String,
        price: json['price'] == null ? null : json['price'] as String,
        availability:
            json['availability'] == null ? null : json['availability'] as bool);
  }
}

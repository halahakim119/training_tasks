import 'package:equatable/equatable.dart';

class CarsListEntity extends Equatable {
  final int? id;
  final String? car;
  final String? carModel;
  final String? carColor;
  final int? carModelYear;
  final String? carVin;
  final String? price;
  final bool? availability;
  const CarsListEntity(
      {this.id,
      this.car,
      this.carModel,
      this.carColor,
      this.carModelYear,
      this.carVin,
      this.price,
      this.availability});

  @override
  List<Object?> get props =>
      [id, car, carModel, carColor, carModelYear, carVin, price, availability];

}

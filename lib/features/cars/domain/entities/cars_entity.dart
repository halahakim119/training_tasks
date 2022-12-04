import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/cars/domain/entities/cars_list_entity.dart';

class CarsEntity extends Equatable {
  final List<CarsListEntity>? cars;
  const CarsEntity({this.cars});

  @override
  List<Object?> get props => [cars];
}

import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/smartphones/domain/entities/products_entity.dart';

class SmartphonesEntity extends Equatable {
  final List<ProductsEntity>? products;

  const SmartphonesEntity({this.products});

  @override
  List<Object?> get props => [products];
}

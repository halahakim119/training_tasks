import 'package:equatable/equatable.dart';

import 'products_entity.dart';

class SmartphonesEntity extends Equatable {
  final List<ProductsEntity>? products;

  const SmartphonesEntity({this.products});

  @override
  List<Object?> get props => [products];
}

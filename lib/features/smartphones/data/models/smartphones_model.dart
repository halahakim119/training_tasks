import 'package:training_tasks/features/smartphones/data/models/products_model.dart';
import 'package:training_tasks/features/smartphones/domain/entities/smartphones_entity.dart';

class SmartphonesModel extends SmartphonesEntity {
  const SmartphonesModel({List<ProductsModel>? products})
      : super(products: products);

  Map<String, Object?> toJson() {
    ProductsModel? products;
    return {'products': products?.toJson()};
  }

  static SmartphonesModel fromJson(Map<String, dynamic> json) {
    return SmartphonesModel(
      products: json['products'] == null
          ? null
          : (json['products'] as List)
              .map<ProductsModel>((data) =>
                  ProductsModel.fromJson(data as Map<String, dynamic>))
              .toList(),
    );
  }
}

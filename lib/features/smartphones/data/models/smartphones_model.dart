import '../../domain/entities/smartphones_entity.dart';
import 'products_model.dart';

class SmartphonesModel extends SmartphonesEntity {
  const SmartphonesModel({List<ProductsModel>? products})
      : super(products: products);

  Map<String, Object?> toJson() {
    List<ProductsModel>? products;

    return {
      'products':
          products?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
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

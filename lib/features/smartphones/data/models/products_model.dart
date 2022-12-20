import 'package:dartz/dartz.dart';

import '../../domain/entities/products_entity.dart';

class ProductsModel extends ProductsEntity {
  const ProductsModel(
      {int? id,
      String? title,
      String? description,
      int? price,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      String? thumbnail,
      List<String>? images})
      : super(
            id: id,
            title: title,
            description: description,
            price: price,
            discountPercentage: discountPercentage,
            rating: rating,
            stock: stock,
            brand: brand,
            category: category,
            thumbnail: thumbnail,
            images: images);

  ProductsModel copyWith(
      {int? id,
      String? title,
      String? description,
      int? price,
      double? discountPercentage,
      double? rating,
      int? stock,
      String? brand,
      String? category,
      String? thumbnail,
      List<String>? images}) {
    return ProductsModel(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        price: price ?? this.price,
        discountPercentage: discountPercentage ?? this.discountPercentage,
        rating: rating ?? this.rating,
        stock: stock ?? this.stock,
        brand: brand ?? this.brand,
        category: category ?? this.category,
        thumbnail: thumbnail ?? this.thumbnail,
        images: images ?? this.images);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'category': category,
      'thumbnail': thumbnail,
      'images': images
    };
  }

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String,
        description:
            json['description'] == null ? null : json['description'] as String,
        price: json['price'] == null ? null : json['price'] as int,
        discountPercentage: json['discountPercentage'] == null
            ? null
            : json['discountPercentage'] as double,
        rating: json['rating'] == null ? null : json['rating'] as double,
        stock: json['stock'] == null ? null : json['stock'] as int,
        brand: json['brand'] == null ? null : json['brand'] as String,
        category: json['category'] == null ? null : json['category'] as String,
        thumbnail:
            json['thumbnail'] == null ? null : json['thumbnail'] as String,
        images: json['images'] == null
            ? null
            : (json['images'] as List)
                .map((images) => images.toString())
                .toList());
  }
}

import 'package:equatable/equatable.dart';

import 'rating_entity.dart';

class JeweleryEntity extends Equatable {
  final int? id;
  final String? title;
  final num? price;
  final String? description;
  final String? category;
  final String? image;
  final RatingEntity? rating;
  const JeweleryEntity(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  @override
  List<Object?> get props =>
      [id, title, price, description, category, image, rating];
}

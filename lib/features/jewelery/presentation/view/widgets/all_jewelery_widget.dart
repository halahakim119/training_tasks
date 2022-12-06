import 'package:flutter/material.dart';
import 'package:training_tasks/features/jewelery/domain/entities/rating_entity.dart';

class AllJeweleryWidget extends StatelessWidget {
  final int? id;
  final String? title;
  final num? price;
  final String? description;
  final String? category;
  final String? image;
  final RatingEntity? rating;

  AllJeweleryWidget(
      {super.key,
      this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(id.toString()),
        Text(title.toString()),
        Text(price.toString()),
        Text(description.toString()),
        Text(category.toString()),
        Image.network(
          image.toString(),
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        Text(rating!.count.toString())
      ],
    );
  }
}

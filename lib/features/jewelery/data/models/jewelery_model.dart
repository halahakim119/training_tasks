import 'package:training_tasks/features/jewelery/data/models/rating_model.dart';
import 'package:training_tasks/features/jewelery/domain/entities/jewelery_entity.dart';

class JeweleryModel extends JeweleryEntity {
  const JeweleryModel(
      {int? id,
      String? title,
      num? price,
      String? description,
      String? category,
      String? image,
      final RatingModel? rating})
      : super(
            id: id,
            title: title,
            price: price,
            description: description,
            category: category,
            image: image,
            rating: rating);

  Map<String, Object?> toJson() {
    RatingModel? rating;
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating?.toJson()
    };
  }

  factory JeweleryModel.fromJson(Map<String, dynamic> json) {
    return JeweleryModel(
        id: json['id'] == null ? null : json['id'] as int,
        title: json['title'] == null ? null : json['title'] as String,
        price: json['price'],
        description:
            json['description'] == null ? null : json['description'] as String,
        category: json['category'] == null ? null : json['category'] as String,
        image: json['image'] == null ? null : json['image'] as String,
        rating: json['rating'] == null
            ? null
            : RatingModel.fromJson(json['rating'] as Map<String, Object?>));
  }
}

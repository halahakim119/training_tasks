import 'package:training_tasks/features/jewelery/domain/entities/rating_entity.dart';

class RatingModel extends RatingEntity {
  const RatingModel({num? rate, int? count}) : super(rate: rate, count: count);

  RatingModel copyWith({num? rate, int? count}) {
    return RatingModel(rate: rate ?? this.rate, count: count ?? this.count);
  }

  Map<String, Object?> toJson() {
    return {'rate': rate, 'count': count};
  }

  factory RatingModel.fromJson(Map<String, Object?> json) {
    return RatingModel(
        rate: json['rate'] == null ? null : json['rate'] as num,
        count: json['count'] == null ? null : json['count'] as int);
  }

  @override
  String toString() {
    return '''Rating(
                rate:$rate,
count:$count
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is RatingModel &&
        other.runtimeType == runtimeType &&
        other.rate == rate &&
        other.count == count;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, rate, count);
  }
}

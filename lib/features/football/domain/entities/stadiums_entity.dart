import 'package:equatable/equatable.dart';

class StadiumsEntity extends Equatable {
  final int? id;
  final String? name;
  final String? city;
  final double? lat;
  final double? lng;
  final String? image;
  const StadiumsEntity(
      {this.id, this.name, this.city, this.lat, this.lng, this.image});

  @override
  List<Object?> get props => [id, name, city, lat, lng, image];
}

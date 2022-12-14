import 'package:training_tasks/features/users/domain/entities/coordinates.dart'
    as CoordinatesEntity;

class Coordinates extends CoordinatesEntity.Coordinates {
  const Coordinates({required double lat, required double lng})
      : super(lat: lat, lng: lng);

  Map<String, dynamic> toJson() {
    return {'lat': lat, 'lng': lng};
  }

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(lat: json['lat'] as double, lng: json['lng'] as double);
  }
}

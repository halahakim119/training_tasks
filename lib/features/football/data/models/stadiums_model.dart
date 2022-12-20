import '../../domain/entities/stadiums_entity.dart';

class StadiumsModel extends StadiumsEntity {
  const StadiumsModel({
    int? id,
    String? name,
    String? city,
    double? lat,
    double? lng,
    String? image,
  }) : super(id: id, name: name, city: city, lat: lat, lng: lng, image: image);
  StadiumsModel copyWith(
      {int? id,
      String? name,
      String? city,
      double? lat,
      double? lng,
      String? image}) {
    return StadiumsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        city: city ?? this.city,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        image: image ?? this.image);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'lat': lat,
      'lng': lng,
      'image': image
    };
  }

  factory StadiumsModel.fromJson(Map<String, Object?> json) {
    return StadiumsModel(
        id: json['id'] == null ? null : json['id'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        city: json['city'] == null ? null : json['city'] as String,
        lat: json['lat'] == null ? null : json['lat'] as double,
        lng: json['lng'] == null ? null : json['lng'] as double,
        image: json['image'] == null ? null : json['image'] as String);
  }

  @override
  String toString() {
    return '''Stadiums(
                id:$id,
name:$name,
city:$city,
lat:$lat,
lng:$lng,
image:$image
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is StadiumsModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.name == name &&
        other.city == city &&
        other.lat == lat &&
        other.lng == lng &&
        other.image == image;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name, city, lat, lng, image);
  }
}

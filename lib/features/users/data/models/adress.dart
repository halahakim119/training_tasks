import 'package:training_tasks/features/users/data/models/coordinates.dart';

import 'package:training_tasks/features/users/domain/entities/address.dart'
    as AddressEntity;
import 'package:training_tasks/features/users/domain/entities/coordinates.dart'
    as CoordinatesEntity;

class Address extends AddressEntity.Address {
  const Address(
      {required String city,
      required String streetName,
      required String streetAddress,
      required String zipCode,
      required String state,
      required String country,
      required Coordinates coordinates})
      : super(
            city: city,
            streetName: streetName,
            streetAddress: streetAddress,
            zipCode: zipCode,
            state: state,
            country: country,
            coordinates: coordinates);

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'street_name': streetName,
      'street_address': streetAddress,
      'zip_code': zipCode,
      'state': state,
      'country': country,
      'coordinates': coordinates
    };
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        city: json['city'],
        streetName: json['street_name'],
        streetAddress: json['street_address'],
        zipCode: json['zip_code'],
        state: json['state'],
        country: json['country'],
        coordinates:
            Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>));
  }
}

import 'package:training_tasks/features/users/domain/entities/coordinates.dart';

class Address {
  final String city;
  final String streetName;
  final String streetAddress;
  final String zipCode;
  final String state;
  final String country;
  final Coordinates coordinates;
  const Address(
      {required this.city,
      required this.streetName,
      required this.streetAddress,
      required this.zipCode,
      required this.state,
      required this.country,
      required this.coordinates});
}

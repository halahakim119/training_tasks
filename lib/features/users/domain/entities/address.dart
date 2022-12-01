import 'package:training_tasks/features/users/domain/entities/coordinates.dart';

class Address {
  final String? city;
  final String? streetName;
  final String? streetAddress;
  final String? zipCode;
  final String? state;
  final String? country;
  final Coordinates? coordinates;
  Address(
      {this.city,
      this.streetName,
      this.streetAddress,
      this.zipCode,
      this.state,
      this.country,
      this.coordinates});
}

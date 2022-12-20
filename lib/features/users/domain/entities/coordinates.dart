import 'package:equatable/equatable.dart';

class Coordinates extends Equatable {
  final double lat;
  final double lng;
  const Coordinates({required this.lat, required this.lng});

  @override
  List<Object?> get props => [lat, lng];
}

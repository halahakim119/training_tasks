import 'package:equatable/equatable.dart';

class TvchannelsEntity extends Equatable {
  final int? id;
  final String? name;
  final String? icon;
  final String? country;
  final String? iso2;
  final List<String>? lang;
  const TvchannelsEntity(
      {this.id, this.name, this.icon, this.country, this.iso2, this.lang});

  @override
  List<Object?> get props => [id, name, icon, country, iso2, lang];
}

import 'package:equatable/equatable.dart';

import 'matches_entity.dart';

class RoundEntity extends Equatable {
  final String? name;
  final List<MatchesEntity>? matches;
  const RoundEntity({this.name, this.matches});

  @override
  List<Object?> get props => [name, matches];
}

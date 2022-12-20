import 'package:equatable/equatable.dart';

import 'round_entity.dart';

class KnockoutEntity extends Equatable {
  final RoundEntity? round16;
  final RoundEntity? round8;
  final RoundEntity? round4;
  final RoundEntity? round2Loser;
  final RoundEntity? round2;
  const KnockoutEntity(
      {this.round16, this.round8, this.round4, this.round2Loser, this.round2});

  @override
  List<Object?> get props => [ round16, round8, round4, round2Loser, round2];
}

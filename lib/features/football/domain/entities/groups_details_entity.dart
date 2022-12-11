import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/football/domain/entities/matches_entity.dart';

class GroupsDetailsEntity extends Equatable {
  final String? name;
  final int? winner;
  final int? runnerup;
  final List<MatchesEntity>? matches;
  const GroupsDetailsEntity(
      {this.name, this.winner, this.runnerup, this.matches});

  @override
  List<Object?> get props => [ name, winner, runnerup, matches];
}

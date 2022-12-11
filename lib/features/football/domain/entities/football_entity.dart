import 'package:equatable/equatable.dart';
import 'package:training_tasks/features/football/domain/entities/groups_entity.dart';
import 'package:training_tasks/features/football/domain/entities/knockout_entity.dart';
import 'package:training_tasks/features/football/domain/entities/stadiums_entity.dart';
import 'package:training_tasks/features/football/domain/entities/teams_entity.dart';
import 'package:training_tasks/features/football/domain/entities/tvchannels_entity.dart';

class FootballEntity extends Equatable {
  final List<StadiumsEntity>? stadiums;
  final List<TvchannelsEntity>? tvchannels;
  final List<TeamsEntity>? teams;
  final GroupsEntity? groups;
  final KnockoutEntity? knockout;

  const FootballEntity(
      {this.stadiums, this.tvchannels, this.teams, this.groups, this.knockout});

  @override
  List<Object?> get props => [stadiums, tvchannels, teams, groups, knockout];
}

import 'package:equatable/equatable.dart';

import 'groups_entity.dart';
import 'knockout_entity.dart';
import 'stadiums_entity.dart';
import 'teams_entity.dart';
import 'tvchannels_entity.dart';

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

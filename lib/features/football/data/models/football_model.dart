import 'package:training_tasks/features/football/data/models/groups_model.dart';
import 'package:training_tasks/features/football/data/models/knockout_model.dart';
import 'package:training_tasks/features/football/data/models/stadiums_model.dart';
import 'package:training_tasks/features/football/data/models/teams_model.dart';
import 'package:training_tasks/features/football/data/models/tvchannels_model.dart';
import 'package:training_tasks/features/football/domain/entities/football_entity.dart';

class FootballModel extends FootballEntity {
  const FootballModel(
      {List<StadiumsModel>? stadiums,
      List<TvchannelsModel>? tvchannels,
      List<TeamsModel>? teams,
      GroupsModel? groups,
      KnockoutModel? knockout})
      : super(
            stadiums: stadiums,
            tvchannels: tvchannels,
            teams: teams,
            groups: groups,
            knockout: knockout);
  FootballModel copyWith(
      {List<StadiumsModel>? stadiums,
      List<TvchannelsModel>? tvchannels,
      List<TeamsModel>? teams,
      GroupsModel? groups,
      KnockoutModel? knockout}) {
    return FootballModel(
        stadiums: stadiums,
        tvchannels: tvchannels,
        teams: teams,
        groups: groups,
        knockout: knockout);
  }

  Map<String, Object?> toJson() {
    List<StadiumsModel>? stadiums;
    List<TvchannelsModel>? tvchannels;
    List<TeamsModel>? teams;
    GroupsModel? groups;
    KnockoutModel? knockout;
    return {
      'stadiums':
          stadiums?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'tvchannels': tvchannels
          ?.map<Map<String, dynamic>>((data) => data.toJson())
          .toList(),
      'teams':
          teams?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'groups': groups?.toJson(),
      'knockout': knockout?.toJson()
    };
  }

  factory FootballModel.fromJson(Map<String, Object?> json) {
    return FootballModel(
        stadiums: json['stadiums'] == null
            ? null
            : (json['stadiums'] as List)
                .map<StadiumsModel>((data) =>
                    StadiumsModel.fromJson(data as Map<String, Object?>))
                .toList(),
        tvchannels: json['tvchannels'] == null
            ? null
            : (json['tvchannels'] as List)
                .map<TvchannelsModel>((data) =>
                    TvchannelsModel.fromJson(data as Map<String, Object?>))
                .toList(),
        teams: json['teams'] == null
            ? null
            : (json['teams'] as List)
                .map<TeamsModel>(
                    (data) => TeamsModel.fromJson(data as Map<String, Object?>))
                .toList(),
        groups: json['groups'] == null
            ? null
            : GroupsModel.fromJson(json['groups'] as Map<String, Object?>),
        knockout: json['knockout'] == null
            ? null
            : KnockoutModel.fromJson(json['knockout'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Football(
                stadiums:${stadiums.toString()},
tvchannels:${tvchannels.toString()},
teams:${teams.toString()},
groups:${groups.toString()},
knockout:${knockout.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is FootballModel &&
        other.runtimeType == runtimeType &&
        other.stadiums == stadiums &&
        other.tvchannels == tvchannels &&
        other.teams == teams &&
        other.groups == groups &&
        other.knockout == knockout;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, stadiums, tvchannels, teams, groups, knockout);
  }
}

import 'package:training_tasks/features/football/domain/entities/matches_entity.dart';
import 'dart:core';

class MatchesModel extends MatchesEntity {
  const MatchesModel({
    int? name,
    String? type,
    int? homeTeam,
    int? awayTeam,
    int? homeResult,
    int? awayResult,
    String? date,
    int? stadium,
    List<int>? channels,
    bool? finished,
    int? matchday,
  }) : super(
            name: name,
            type: type,
            homeTeam: homeTeam,
            awayTeam: awayTeam,
            homeResult: homeResult,
            awayResult: awayResult,
            date: date,
            stadium: stadium,
            channels: channels,
            finished: finished,
            matchday: matchday);
  MatchesModel copyWith(
      {int? name,
      String? type,
      int? homeTeam,
      int? awayTeam,
      int? homeResult,
      int? awayResult,
      String? date,
      int? stadium,
      List<int>? channels,
      bool? finished,
      int? matchday}) {
    return MatchesModel(
        name: name ?? this.name,
        type: type ?? this.type,
        homeTeam: homeTeam ?? this.homeTeam,
        awayTeam: awayTeam ?? this.awayTeam,
        homeResult: homeResult ?? this.homeResult,
        awayResult: awayResult ?? this.awayResult,
        date: date ?? this.date,
        stadium: stadium ?? this.stadium,
        channels: channels ?? this.channels,
        finished: finished ?? this.finished,
        matchday: matchday ?? this.matchday);
  }

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'type': type,
      'homeTeam': homeTeam,
      'awayTeam': awayTeam,
      'homeResult': homeResult,
      'awayResult': awayResult,
      'date': date,
      'stadium': stadium,
      'channels': channels,
      'finished': finished,
      'matchday': matchday
    };
  }

  factory MatchesModel.fromJson(Map<String, Object?> json) {
    return MatchesModel(
        name: json['name'] == null ? null : json['name'] as int,
        type: json['type'] == null ? null : json['type'] as String,
        homeTeam: json['homeTeam'] == null ? null : json['homeTeam'] as int,
        awayTeam: json['awayTeam'] == null ? null : json['awayTeam'] as int,
        homeResult:
            json['homeResult'] == null ? null : json['homeResult'] as int,
        awayResult:
            json['awayResult'] == null ? null : json['awayResult'] as int,
        date: json['date'] == null ? null : json['date'] as String,
        stadium: json['stadium'] == null ? null : json['stadium'] as int,
        channels: json['channels'] == null
            ? null
            : (json['channels'] as List)
                .map((channels) => channels.toInt() as int)
                .toList(),
        finished: json['finished'] == null ? null : json['finished'] as bool,
        matchday: json['matchday'] == null ? null : json['matchday'] as int);
  }

  @override
  String toString() {
    return '''Matches(
                name:$name,
type:$type,
homeTeam:$homeTeam,
awayTeam:$awayTeam,
homeResult:$homeResult,
awayResult:$awayResult,
date:$date,
stadium:$stadium,
channels:$channels,
finished:$finished,
matchday:$matchday
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is MatchesModel &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.type == type &&
        other.homeTeam == homeTeam &&
        other.awayTeam == awayTeam &&
        other.homeResult == homeResult &&
        other.awayResult == awayResult &&
        other.date == date &&
        other.stadium == stadium &&
        other.channels == channels &&
        other.finished == finished &&
        other.matchday == matchday;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, type, homeTeam, awayTeam, homeResult,
        awayResult, date, stadium, channels, finished, matchday);
  }
}

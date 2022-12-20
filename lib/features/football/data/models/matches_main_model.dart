import '../../domain/entities/matches_main_entity.dart';

class MatchesMainModel extends MatchesMainEntity {
  const MatchesMainModel({
    int? name,
    String? type,
    int? homeTeam,
    int? awayTeam,
    int? homeResult,
    int? awayResult,
    dynamic homePenalty,
    dynamic awayPenalty,
    int? winner,
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
            homePenalty: homePenalty,
            awayPenalty: awayPenalty,
            winner: winner,
            date: date,
            stadium: stadium,
            channels: channels,
            finished: finished,
            matchday: matchday);
  MatchesMainModel copyWith(
      {int? name,
      String? type,
      int? homeTeam,
      int? awayTeam,
      int? homeResult,
      int? awayResult,
      dynamic? homePenalty,
      dynamic? awayPenalty,
      int? winner,
      String? date,
      int? stadium,
      List<int>? channels,
      bool? finished,
      int? matchday}) {
    return MatchesMainModel(
        name: name ?? this.name,
        type: type ?? this.type,
        homeTeam: homeTeam ?? this.homeTeam,
        awayTeam: awayTeam ?? this.awayTeam,
        homeResult: homeResult ?? this.homeResult,
        awayResult: awayResult ?? this.awayResult,
        homePenalty: homePenalty ?? this.homePenalty,
        awayPenalty: awayPenalty ?? this.awayPenalty,
        winner: winner ?? this.winner,
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
      'homePenalty': homePenalty,
      'awayPenalty': awayPenalty,
      'winner': winner,
      'date': date,
      'stadium': stadium,
      'channels': channels,
      'finished': finished,
      'matchday': matchday
    };
  }

  factory MatchesMainModel.fromJson(Map<String, Object?> json) {
    return MatchesMainModel(
        name: json['name'] == null ? null : json['name'] as int,
        type: json['type'] == null ? null : json['type'] as String,
        homeTeam: json['homeTeam'] == null ? null : json['homeTeam'] as int,
        awayTeam: json['awayTeam'] == null ? null : json['awayTeam'] as int,
        homeResult:
            json['homeResult'] == null ? null : json['homeResult'] as int,
        awayResult:
            json['awayResult'] == null ? null : json['awayResult'] as int,
        homePenalty: json['homePenalty'] as dynamic,
        awayPenalty: json['awayPenalty'] as dynamic,
        winner: json['winner'] == null ? null : json['winner'] as int,
        date: json['date'] == null ? null : json['date'] as String,
        stadium: json['stadium'] == null ? null : json['stadium'] as int,
        channels:
            json['channels'] == null ? null : json['channels'] as List<int>,
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
homePenalty:$homePenalty,
awayPenalty:$awayPenalty,
winner:$winner,
date:$date,
stadium:$stadium,
channels:$channels,
finished:$finished,
matchday:$matchday
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is MatchesMainModel &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.type == type &&
        other.homeTeam == homeTeam &&
        other.awayTeam == awayTeam &&
        other.homeResult == homeResult &&
        other.awayResult == awayResult &&
        other.homePenalty == homePenalty &&
        other.awayPenalty == awayPenalty &&
        other.winner == winner &&
        other.date == date &&
        other.stadium == stadium &&
        other.channels == channels &&
        other.finished == finished &&
        other.matchday == matchday;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        name,
        type,
        homeTeam,
        awayTeam,
        homeResult,
        awayResult,
        homePenalty,
        awayPenalty,
        winner,
        date,
        stadium,
        channels,
        finished,
        matchday);
  }
}

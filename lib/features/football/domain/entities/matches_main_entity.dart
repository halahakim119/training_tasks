import 'package:equatable/equatable.dart';

class MatchesMainEntity extends Equatable {
  final int? name;
  final String? type;
  final int? homeTeam;
  final int? awayTeam;
  final int? homeResult;
  final int? awayResult;
  final dynamic homePenalty;
  final dynamic awayPenalty;
  final int? winner;
  final String? date;
  final int? stadium;
  final List<int>? channels;
  final bool? finished;
  final int? matchday;
  const MatchesMainEntity(
      {this.name,
      this.type,
      this.homeTeam,
      this.awayTeam,
      this.homeResult,
      this.awayResult,
      this.homePenalty,
      this.awayPenalty,
      this.winner,
      this.date,
      this.stadium,
      this.channels,
      this.finished,
      this.matchday});

  @override
  List<Object?> get props => [
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
        matchday
      ];
}

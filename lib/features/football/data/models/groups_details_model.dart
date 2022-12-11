import 'package:training_tasks/features/football/data/models/matches_model.dart';
import 'package:training_tasks/features/football/domain/entities/groups_details_entity.dart';

class GroupsDetailsModel extends GroupsDetailsEntity {
  const GroupsDetailsModel({
    String? name,
    int? winner,
    int? runnerup,
    List<MatchesModel>? matches,
  }) : super(
          name: name,
          winner: winner,
          runnerup: runnerup,
          matches: matches,
        );
  GroupsDetailsModel copyWith(
      {String? name, int? winner, int? runnerup, List<MatchesModel>? matches}) {
    return GroupsDetailsModel(
        name: name ?? this.name,
        winner: winner ?? this.winner,
        runnerup: runnerup ?? this.runnerup,
        matches: matches);
  }

  Map<String, Object?> toJson() {
    List<MatchesModel>? matches;
    return {
      'name': name,
      'winner': winner,
      'runnerup': runnerup,
      'matches':
          matches?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  factory GroupsDetailsModel.fromJson(Map<String, Object?> json) {
    return GroupsDetailsModel(
        name: json['name'] == null ? null : json['name'] as String,
        winner: json['winner'] == null ? null : json['winner'] as int,
        runnerup: json['runnerup'] == null ? null : json['runnerup'] as int,
        matches: json['matches'] == null
            ? null
            : (json['matches'] as List)
                .map<MatchesModel>((data) =>
                    MatchesModel.fromJson(data as Map<String, Object?>))
                .toList());
  }

  @override
  String toString() {
    return '''A(
                name:$name,
winner:$winner,
runnerup:$runnerup,
matches:${matches.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is GroupsDetailsModel &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.winner == winner &&
        other.runnerup == runnerup &&
        other.matches == matches;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, winner, runnerup, matches);
  }
}

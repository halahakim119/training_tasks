import '../../domain/entities/round_entity.dart';
import 'matches_model.dart';

class RoundModel extends RoundEntity {
  const RoundModel({
    String? name,
    List<MatchesModel>? matches,
  }) : super(name: name, matches: matches);

  RoundModel copyWith({
    String? name,
    List<MatchesModel>? matches,
  }) {
    return RoundModel(name: name ?? this.name, matches: matches);
  }

  Map<String, Object?> toJson() {
    List<MatchesModel>? matches;
    return {
      'name': name,
      'matches':
          matches?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  factory RoundModel.fromJson(Map<String, Object?> json) {
    return RoundModel(
        name: json['name'] == null ? null : json['name'] as String,
        matches: json['matches'] == null
            ? null
            : (json['matches'] as List)
                .map<MatchesModel>((data) =>
                    MatchesModel.fromJson(data as Map<String, Object?>))
                .toList());
  }

  @override
  String toString() {
    return '''Round16(
                name:$name,
matches:${matches.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is RoundModel &&
        other.runtimeType == runtimeType &&
        other.name == name &&
        other.matches == matches;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, name, matches);
  }
}

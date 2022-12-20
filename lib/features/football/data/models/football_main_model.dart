import '../../domain/entities/football_main_entity.dart';
import 'football_Model.dart';

class FootballMainModel extends FootballMainEntity {
  const FootballMainModel({FootballModel? football})
      : super(football: football);

  FootballMainModel copyWith({FootballModel? football}) {
    return FootballMainModel(football: football);
  }

  Map<String, Object?> toJson() {
    FootballModel? football;
    return {'football': football?.toJson()};
  }

  static FootballMainModel fromJson(Map<String, Object?> json) {
    return FootballMainModel(
        football: json['football'] == null
            ? null
            : FootballModel.fromJson(json['football'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''FootballMainModel(
                football:${football.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is FootballMainModel &&
        other.runtimeType == runtimeType &&
        other.football == football;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, football);
  }
}

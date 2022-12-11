import 'package:training_tasks/features/football/data/models/round_model.dart';
import 'package:training_tasks/features/football/domain/entities/knockout_entity.dart';

class KnockoutModel extends KnockoutEntity {
  const KnockoutModel({
    RoundModel? round16,
    RoundModel? round8,
    RoundModel? round4,
    RoundModel? round2Loser,
    RoundModel? round2,
  }) : super(
          round16: round16,
          round8: round8,
          round4: round4,
          round2Loser: round2Loser,
          round2: round2,
        );
  KnockoutModel copyWith(
      {RoundModel? round16,
      RoundModel? round8,
      RoundModel? round4,
      RoundModel? round2Loser,
      RoundModel? round2}) {
    return KnockoutModel(
        round16: round16,
        round8: round8,
        round4: round4,
        round2Loser: round2Loser,
        round2: round2);
  }

  Map<String, Object?> toJson() {
    RoundModel? round16;
    RoundModel? round8;
    RoundModel? round4;
    RoundModel? round2Loser;
    RoundModel? round2;
    return {
      'round16': round16?.toJson(),
      'round8': round8?.toJson(),
      'round4': round4?.toJson(),
      'round2Loser': round2Loser?.toJson(),
      'round2': round2?.toJson()
    };
  }

  factory KnockoutModel.fromJson(Map<String, Object?> json) {
    return KnockoutModel(
        round16: json['round16'] == null
            ? null
            : RoundModel.fromJson(json['round16'] as Map<String, Object?>),
        round8: json['round8'] == null
            ? null
            : RoundModel.fromJson(json['round8'] as Map<String, Object?>),
        round4: json['round4'] == null
            ? null
            : RoundModel.fromJson(json['round4'] as Map<String, Object?>),
        round2Loser: json['round2Loser'] == null
            ? null
            : RoundModel.fromJson(json['round2Loser'] as Map<String, Object?>),
        round2: json['round2'] == null
            ? null
            : RoundModel.fromJson(json['round2'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Knockout(
                round16:${round16.toString()},
round8:${round8.toString()},
round4:${round4.toString()},
round2Loser:${round2Loser.toString()},
round2:${round2.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is KnockoutModel &&
        other.runtimeType == runtimeType &&
        other.round16 == round16 &&
        other.round8 == round8 &&
        other.round4 == round4 &&
        other.round2Loser == round2Loser &&
        other.round2 == round2;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, round16, round8, round4, round2Loser, round2);
  }
}

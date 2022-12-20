import 'package:training_tasks/features/random_joke/domain/entities/random_joke_entity.dart';

class RandomJokeModel extends RandomJokeEntity {
  const RandomJokeModel({ int? id,
   String? type,
   String? setup,
   String? punchline}):super(id: id,type: type,setup: setup,punchline: punchline);
  RandomJokeModel copyWith(
      {int? id, String? type, String? setup, String? punchline}) {
    return RandomJokeModel(
        id: id ?? this.id,
        type: type ?? this.type,
        setup: setup ?? this.setup,
        punchline: punchline ?? this.punchline);
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'type': type, 'setup': setup, 'punchline': punchline};
  }

  factory RandomJokeModel.fromJson(Map<String, Object?> json) {
    return RandomJokeModel(
        id: json['id'] == null ? null : json['id'] as int,
        type: json['type'] == null ? null : json['type'] as String,
        setup: json['setup'] == null ? null : json['setup'] as String,
        punchline:
            json['punchline'] == null ? null : json['punchline'] as String);
  }

  @override
  String toString() {
    return '''RandomJoke(
                id:$id,
type:$type,
setup:$setup,
punchline:$punchline
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is RandomJokeModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.type == type &&
        other.setup == setup &&
        other.punchline == punchline;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, type, setup, punchline);
  }
}

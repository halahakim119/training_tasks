import '../../domain/entities/teams_entity.dart';

class TeamsModel extends TeamsEntity {
  const TeamsModel({
    int? id,
    String? name,
    String? fifaCode,
    String? iso2,
    String? flag,
    String? emoji,
    String? emojiString,
  }) : super(
            id: id,
            name: name,
            fifaCode: fifaCode,
            iso2: iso2,
            flag: flag,
            emoji: emoji,
            emojiString: emojiString);
  TeamsModel copyWith(
      {int? id,
      String? name,
      String? fifaCode,
      String? iso2,
      String? flag,
      String? emoji,
      String? emojiString}) {
    return TeamsModel(
        id: id ?? this.id,
        name: name ?? this.name,
        fifaCode: fifaCode ?? this.fifaCode,
        iso2: iso2 ?? this.iso2,
        flag: flag ?? this.flag,
        emoji: emoji ?? this.emoji,
        emojiString: emojiString ?? this.emojiString);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'fifaCode': fifaCode,
      'iso2': iso2,
      'flag': flag,
      'emoji': emoji,
      'emojiString': emojiString
    };
  }

  factory TeamsModel.fromJson(Map<String, Object?> json) {
    return TeamsModel(
        id: json['id'] == null ? null : json['id'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        fifaCode: json['fifaCode'] == null ? null : json['fifaCode'] as String,
        iso2: json['iso2'] == null ? null : json['iso2'] as String,
        flag: json['flag'] == null ? null : json['flag'] as String,
        emoji: json['emoji'] == null ? null : json['emoji'] as String,
        emojiString:
            json['emojiString'] == null ? null : json['emojiString'] as String);
  }

  @override
  String toString() {
    return '''Teams(
                id:$id,
name:$name,
fifaCode:$fifaCode,
iso2:$iso2,
flag:$flag,
emoji:$emoji,
emojiString:$emojiString
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is TeamsModel &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.name == name &&
        other.fifaCode == fifaCode &&
        other.iso2 == iso2 &&
        other.flag == flag &&
        other.emoji == emoji &&
        other.emojiString == emojiString;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, id, name, fifaCode, iso2, flag, emoji, emojiString);
  }
}

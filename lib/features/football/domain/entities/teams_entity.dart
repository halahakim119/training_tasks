import 'package:equatable/equatable.dart';

class TeamsEntity extends Equatable {
  final int? id;
  final String? name;
  final String? fifaCode;
  final String? iso2;
  final String? flag;
  final String? emoji;
  final String? emojiString;
  const TeamsEntity(
      {this.id,
      this.name,
      this.fifaCode,
      this.iso2,
      this.flag,
      this.emoji,
      this.emojiString});

  @override
  List<Object?> get props =>
      [id, name, fifaCode, iso2, flag, emoji, emojiString];
}

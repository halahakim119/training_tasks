import 'package:equatable/equatable.dart';

class RandomJokeEntity extends Equatable {
  final int? id;
  final String? type;
  final String? setup;
  final String? punchline;
  const RandomJokeEntity({this.id, this.type, this.setup, this.punchline});
  @override
  List<Object?> get props => [id, type, setup, punchline];
}

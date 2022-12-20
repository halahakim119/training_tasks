import 'package:equatable/equatable.dart';

class Employment extends Equatable {
  final String title;
  final String keySkill;
  const Employment({required this.title, required this.keySkill});

  @override
  List<Object?> get props => [title, keySkill];
}

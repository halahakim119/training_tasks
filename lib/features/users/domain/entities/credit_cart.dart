import 'package:equatable/equatable.dart';

class CreditCard extends Equatable {
  final String ccNumber;
  const CreditCard({required this.ccNumber});

  @override
  List<Object?> get props => [ccNumber];
}

import 'package:training_tasks/features/users/domain/entities/credit_cart.dart'
    as CreditCardEntity;

class CreditCard extends CreditCardEntity.CreditCard {
  const CreditCard({required String ccNumber}) : super(ccNumber: ccNumber);

  Map<String, dynamic> toJson() {
    return {'cc_number': ccNumber};
  }

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(ccNumber: json['cc_number']);
  }
}

import 'package:training_tasks/features/users/domain/entities/subscription.dart'
    as SubscriptionEntity;

class Subscription extends SubscriptionEntity.Subscription {
  const Subscription(
      {required String plan,
      required String status,
      required String paymentMethod,
      required String term})
      : super(
            plan: plan,
            status: status,
            paymentMethod: paymentMethod,
            term: term);

  Map<String, dynamic> toJson() {
    return {
      'plan': plan,
      'status': status,
      'payment_method': paymentMethod,
      'term': term
    };
  }

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
        plan: json['plan'],
        status: json['status'],
        paymentMethod: json['payment_method'],
        term: json['term']);
  }
}

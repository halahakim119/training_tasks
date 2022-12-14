import 'package:training_tasks/features/users/domain/entities/user.dart';

import 'adress.dart';
import 'credit_card.dart';
import 'employment.dart';
import 'subscription.dart';

class UsersModel extends UsersEntity {
  const UsersModel(
      {required int id,
      required String uid,
      required String password,
      required String firstName,
      required String lastName,
      required String username,
      required String email,
      required String avatar,
      required String gender,
      required String phoneNumber,
      required String socialInsuranceNumber,
      required String dateOfBirth,
      required Employment employment,
      required Address address,
      required CreditCard creditCard,
      required Subscription subscription})
      : super(
            id: id,
            uid: uid,
            password: password,
            firstName: firstName,
            lastName: lastName,
            username: username,
            email: email,
            avatar: avatar,
            gender: gender,
            phoneNumber: phoneNumber,
            socialInsuranceNumber: socialInsuranceNumber,
            dateOfBirth: dateOfBirth,
            employment: employment,
            address: address,
            creditCard: creditCard,
            subscription: subscription);

  Map<String, dynamic> toJson() {
    Employment? employment;
    Address? address;
    CreditCard? creditCard;
    Subscription? subscription;
    return {
      'id': id,
      'uid': uid,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'email': email,
      'avatar': avatar,
      'gender': gender,
      'phone_number': phoneNumber,
      'social_insurance_number': socialInsuranceNumber,
      'date_of_birth': dateOfBirth,
      'employment': employment?.toJson(),
      'address': address?.toJson(),
      'credit_card': creditCard?.toJson(),
      'subscription': subscription?.toJson()
    };
  }

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
        id: json['id'] as int,
        uid: json['uid'] as String,
        password: json['password'] as String,
        firstName: json['first_name'] as String,
        lastName: json['last_name'] as String,
        username: json['username'] as String,
        email: json['email'] as String,
        avatar: json['avatar'] as String,
        gender: json['gender'] as String,
        phoneNumber: json['phone_number'] as String,
        socialInsuranceNumber: json['social_insurance_number'] as String,
        dateOfBirth: json['date_of_birth'] as String,
        employment:
            Employment.fromJson(json['employment'] as Map<String, dynamic>),
        address: Address.fromJson(json['address'] as Map<String, dynamic>),
        creditCard:
            CreditCard.fromJson(json['credit_card'] as Map<String, dynamic>),
        subscription: Subscription.fromJson(
            json['subscription'] as Map<String, dynamic>));
  }
}

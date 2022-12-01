import 'package:training_tasks/features/users/data/models/adress.dart';
import 'package:training_tasks/features/users/data/models/credit_card.dart';
import 'package:training_tasks/features/users/data/models/employment.dart';
import 'package:training_tasks/features/users/data/models/subscription.dart';

import 'package:training_tasks/features/users/domain/entities/user.dart'
    as UserEntity;

class User extends UserEntity.User {
  const User(
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
      'employment': employment,
      'address': address,
      'credit_card': creditCard,
      'subscription': subscription
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
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
        employment: json['employment'],
        address: json['address'],
        creditCard: json['credit_card'],
        subscription: json['subscription']);
  }
}

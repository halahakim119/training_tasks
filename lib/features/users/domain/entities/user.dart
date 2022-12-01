import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:training_tasks/features/users/domain/entities/address.dart';
import 'package:training_tasks/features/users/domain/entities/credit_cart.dart';
import 'package:training_tasks/features/users/domain/entities/employement.dart';
import 'package:training_tasks/features/users/domain/entities/subscription.dart';

class User extends Equatable {
  final int? id;
  final String? uid;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? username;
  final String? email;
  final String? avatar;
  final String? gender;
  final String? phoneNumber;
  final String? socialInsuranceNumber;
  final String? dateOfBirth;
  final Employment? employment;
  final Address? address;
  final CreditCard? creditCard;
  final Subscription? subscription;

  User({
    this.id,
    this.uid,
    this.password,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.avatar,
    this.gender,
    this.phoneNumber,
    this.socialInsuranceNumber,
    this.dateOfBirth,
    this.employment,
    this.address,
    this.creditCard,
    this.subscription,
  });

  @override
  List<Object?> get props => [
        id,
        uid,
        password,
        firstName,
        lastName,
        username,
        email,
        avatar,
        gender,
        phoneNumber,
        socialInsuranceNumber,
        dateOfBirth,
        employment,
        address,
        creditCard,
        subscription
      ];
}

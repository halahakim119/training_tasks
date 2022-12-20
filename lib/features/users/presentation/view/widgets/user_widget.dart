import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final int id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String streetAddress;
  final String creditCardNumber;

  const UserWidget(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.streetAddress,
      required this.creditCardNumber});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        ' user $id',
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: $firstName $lastName '),
              Text('phone number $phoneNumber'),
              Text('street address $streetAddress'),
              Text('Credit Card number $creditCardNumber'),
            ],
          ),
        )
      ],
    );
  }
}

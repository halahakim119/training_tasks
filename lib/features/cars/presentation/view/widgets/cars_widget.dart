import 'package:flutter/material.dart';

class CarsWidget extends StatelessWidget {
  final int? id;
  final String? car;
  final String? carModel;
  final String? carColor;
  final int? carModelYear;
  final String? carVin;
  final String? price;
  final bool? availability;
  const CarsWidget(
      {this.id,
      this.car,
      this.carModel,
      this.carColor,
      this.carModelYear,
      this.carVin,
      this.price,
      this.availability});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      subtitle: Text('ID: $id'),
      title: Text('Car Name: $car'),
      collapsedIconColor: availability == true ? Colors.green : Colors.red,
      iconColor: availability == true ? Colors.green : Colors.red,
      leading: availability == true
          ? const Icon(Icons.check_circle_outline_rounded)
          : const Icon(Icons.remove_circle_outlined),
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Model: $carModel'),
                  Text('Color: $carColor'),
                  Text('Model Year: $carModelYear')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Vin: $carVin'),
                  Text('Price: $price'),
                  Text(
                      'Availability: ${availability == true ? 'available' : 'not  available'}'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:car_rental/data/model/car_model.dart';
import 'package:car_rental/presentation/widgets/card_car.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  CarList({super.key});

  final List<CarModel> cars = [
    CarModel(
      model: 'Fournter',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    CarModel(
      model: 'Fournter',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    CarModel(
      model: 'Fournter',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your car'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => CardCar(
          car: cars[index],
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 20,
        ),
        itemCount: cars.length,
      ),
    );
  }
}

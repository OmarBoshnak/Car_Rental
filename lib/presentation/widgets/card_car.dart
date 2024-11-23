import 'package:car_rental/data/model/car_model.dart';
import 'package:car_rental/presentation/pages/card_details.dart';
import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  final CarModel car;

  CardCar({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardDetails(car: car),
              ));
        },
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/white_car.png',
                height: 120,
              ),
              Text(
                car.model,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/gps.png',
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '${car.distance.toStringAsFixed(0)}km',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Image.asset(
                    'assets/pump.png',
                    height: 15,
                    width: 15,
                  ),
                  Spacer(),
                  Text(
                    '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

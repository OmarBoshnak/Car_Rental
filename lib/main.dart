import 'package:car_rental/firebase_options.dart';
import 'package:car_rental/presentation/pages/card_details.dart';
import 'package:car_rental/presentation/pages/maps_detalis.dart';
import 'package:car_rental/presentation/pages/onboarding.dart';
import 'package:car_rental/presentation/widgets/card_car.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental',
      theme: ThemeData(),
      home: OnboardingScreen(),
    );
  }
}

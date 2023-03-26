import 'package:flutter/material.dart';
import 'package:bicycle_rental_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bicycle Rental',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
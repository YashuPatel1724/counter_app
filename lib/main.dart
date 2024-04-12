import 'package:flutter/material.dart';
import 'counter_first_app/firstapp.dart';
import 'counter_first_app/counter_second_app.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return counterapp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    );
  }
}


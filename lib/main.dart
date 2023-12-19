import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/screens/counter/counter_screen.dart';
import 'package:flutter_application_2/presentation/screens/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const CounterFunctionsScreen(),
    );
  }
}

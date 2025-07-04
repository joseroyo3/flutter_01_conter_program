import 'package:flutter/material.dart';
import 'package:flutter_01_conter_program/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,  // Corregido de useMaterials a useMaterial3
        colorSchemeSeed: Colors.blue,
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}
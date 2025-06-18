import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COUNTER FUNCTIONS'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              //contador = 0; podria estar fuera o dentro
              setState(() {
                contador = 0;
              });
            },
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              contador == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 80),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, //baja los botones
        children: [
          CustomBotom(
            icon: Icons.plus_one,
            onPressed: () {
              contador++;
              setState(() {});
            },
          ),
          const SizedBox(height: 10), // Espacio entre botones
          CustomBotom(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (contador == 0) return;
              contador--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

// BOTON PERSONALIZADO
class CustomBotom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomBotom({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      backgroundColor: Colors.amber,
      elevation: 15,
      heroTag: 'decrement',
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

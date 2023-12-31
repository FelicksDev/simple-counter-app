import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              (counter != 1)
                  ? const Text('Clicks',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w100))
                  : const Text('Click',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w100))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}

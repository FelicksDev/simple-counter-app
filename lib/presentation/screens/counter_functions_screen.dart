import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador Functions"),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ],
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w100))
                  : const Text('Click',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w100))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFloatingActionButton(
              icon: Icons.refresh,
              onPressed: () {
                counter = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),

            CustomFloatingActionButton(
              icon: Icons.plus_one,
              onPressed: () {
                counter++;
                setState(() {});
              },
            ),
            //const Spacer(),
            const SizedBox(height: 10),
            CustomFloatingActionButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (counter == 0) return;
                counter--;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

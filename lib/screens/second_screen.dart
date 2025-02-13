import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_notifier.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterNotifier>(builder: (_, CounterNotifier notifier, __) {
            return Text(
              notifier.counter.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            );
          }),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                onPressed: () {
                  context.read<CounterNotifier>().increment();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 40),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterNotifier>().decrement();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                child: const Icon(Icons.minimize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

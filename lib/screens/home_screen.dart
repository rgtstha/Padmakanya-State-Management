import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_notifier.dart';
import 'package:state_management/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return const SecondScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.next_plan),
      ),
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterNotifier>(
            builder: (_, CounterNotifier counterNotifier, __) {
              return Text(
                counterNotifier.counter.toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              );
            },
          ),
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

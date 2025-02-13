import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_notifier.dart';
import 'package:state_management/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterNotifier(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

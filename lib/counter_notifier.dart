import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int counter = 0;

  void increment() {
    debugPrint("Increment method called");
    counter++;
    notifyListeners();
  }

  void decrement() {
    debugPrint("Increment method called");
    counter--;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  List<String> _history = [];

  int get count => _count;
  List<String> get history => _history;

  void increment() {
    _count++;
    _history.add("Incremented to $_count");
    notifyListeners();
  }

  void decrement() {
    _count--;
    _history.add("Decrement to $_count");
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _history.add("Reset to 0 ");
    notifyListeners();
  }
}

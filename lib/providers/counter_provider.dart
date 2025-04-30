import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  List<String> _history = [];

  int get count => _count;
  List<String> get history => _history;

  CounterProvider() {
    _loadCounter();
  }

  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('count') ?? 0;
    _history = (prefs.getStringList('history') ?? []);
    notifyListeners();
  }

  void _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count', _count);
    await prefs.setStringList('history', _history);
  }

  void increment() {
    _count++;
    _history.add("Incremented to $_count");
    _saveData();
    notifyListeners();
  }

  void decrement() {
    _count--;
    _history.add("Decremented to $_count");
    _saveData();
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _history.add("Reset to 0");
    _saveData();
    notifyListeners();
  }
}

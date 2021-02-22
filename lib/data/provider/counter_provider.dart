import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  String get counter => _counter.toString();

  void setCounter(int value) {
    _counter = value;
    notifyListeners();
  }

  void incrementCounter() {
    _counter = _counter + 1;
    notifyListeners();
  }

  void decrementCounter() {
    _counter = _counter == 0 ? 0 : _counter - 1;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier {
  int count = 10;
  String name = "Abil";
  toIncreament() {
    count++;
    notifyListeners();
  }
}

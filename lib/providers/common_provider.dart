import 'package:flutter/material.dart';

class CommonProvider with ChangeNotifier {
  int _current = 0;
  int get total => _current;

  void changeStatus(int current) {
    _current = _current + current;
    notifyListeners();
  }
}

class CommonSent with ChangeNotifier {
  int _sum = 0;
  int get sum => _sum;

  void addSum(int sents) {
    _sum = sents;
    _sum += sents;
    notifyListeners();
  }
}

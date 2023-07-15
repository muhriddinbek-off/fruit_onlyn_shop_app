import 'package:flutter/material.dart';

class CommonProvider with ChangeNotifier {
  int _current = 0;
  int get l => _current;
  void changeStatus(int current) {
    _current = _current + current;
    notifyListeners();
  }
}

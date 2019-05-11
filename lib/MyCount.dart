import 'package:flutter/foundation.dart';

class MyCount with ChangeNotifier {
  int _myCount = 0;

  int get myCount => _myCount;

  set myCount(int value) {
    _myCount = value;
    notifyListeners();
  }
}
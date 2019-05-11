import 'package:flutter/foundation.dart';

class MyCount with ChangeNotifier {
  int _myCount = 0;

  int get myCount => _myCount;

  set myCount(int value) {
    _myCount = value;
    notifyListeners();
  }
}

class Area with ChangeNotifier {
  List<Users> _list=[];

  List<Users> get list => _list;

  set list(List<Users> value) {
    _list = value;
  }

  void addUser(String name){
    var user=Users();
    user.name=name;
    _list.add(user);
    notifyListeners();
  }
}

class Users with ChangeNotifier {
  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

}

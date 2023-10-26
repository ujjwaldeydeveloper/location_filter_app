import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  late bool globalCheckFalse;

  void clearAll() {
    globalCheckFalse = false;
    notifyListeners();
  }
}


import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  bool _isLogged = false;

  bool get data => _isLogged;

  void logIn () {
    _isLogged = true;
    notifyListeners();
  }

  void logOut () {
    _isLogged = false;
    notifyListeners();
  }

}
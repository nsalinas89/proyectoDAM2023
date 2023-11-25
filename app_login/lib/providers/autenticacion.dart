import 'package:flutter/material.dart';

class Autenticacion extends ChangeNotifier {

     bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void setAuthenticated(bool value) {
    _isAuthenticated = value;
    notifyListeners();
  }

  //Ve el estado de la autenticacion
  bool checkAuthentication() {
   
    return _isAuthenticated;
  }
}
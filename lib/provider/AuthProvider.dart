import 'package:flutter/material.dart';
import 'package:shamo/services/AuthService.dart';
import '../models/UserModel.dart';

class AuthProvider with ChangeNotifier {

  UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register ({
    String name,
    String username,
    String password,
    String email
  }) async {

    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password

      );
      this._user = user;
      notifyListeners();
      return true;
    
    } catch (e) {
      return false;
    }


  }

  Future<bool> login ({
    String password,
    String email
  }) async {

    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password

      );
      this.user = user;
      return true;
    
    } catch (e) {
      return false;
    }


  }




}
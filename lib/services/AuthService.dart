import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/UserModel.dart';

class AuthService {
  
  String baseUrl = 'http://localhost:8000/api';

  Future<UserModel> register({
    String name,
    String username,
    String email,
    String password
  }) async {
    var url = '${this.baseUrl}/register ';
    var headers = {
      'Content-Type' : 'application/json'
    };
    var body = jsonEncode({
      'name' : name,
      'username': username,
      'email' : email,  
      'password' : password
    });

    final response = await http.post(Uri.parse(url),headers: headers,body: body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data']; 
      UserModel user = UserModel.fromJSON(data['user']);
      user.token = 'Bearer '+ data['access_token'];
      return user;
    } else {
      throw Exception('Gagal Register');
    }

  }

  Future<UserModel> login({
    String email,
    String password
  }) async {
    var url = '${this.baseUrl}/login ';
    var headers = {
      'Content-Type' : 'application/json'
    };
    var body = jsonEncode({
      'email' : email,  
      'password' : password
    });

    final response = await http.post(Uri.parse(url),headers: headers,body: body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data']; 
      UserModel user = UserModel.fromJSON(data['user']);
      user.token = 'Bearer '+ data['access_token'];
      return user;
    } else {
      throw Exception('Gagal login');
    }

  }
  
}
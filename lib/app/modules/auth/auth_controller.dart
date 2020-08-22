import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

const register_URL =
    'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD8YgMVxavDToMD4JXWhX2QQsgb5FQpTtc';
const auth_URL =
    'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD8YgMVxavDToMD4JXWhX2QQsgb5FQpTtc';

abstract class _AuthControllerBase with Store {
  @observable
  String email = '';
  @observable
  String password = '';

  Future signUp() async {
    final response = await http.post(register_URL,
        body: json.encode(
            {"email": email, "password": password, "returnSecureToken": true}));
    if (response.statusCode != 200) {
      return;
    } else {
      signIn();
    }
  }

  Future signIn() async {
    final response = await http.post(auth_URL,
        body: json.encode(
            {"email": email, "password": password, "returnSecureToken": true}));
    print(json.decode(response.body));
    if (response.statusCode != 200) {
      return;
    } else {
      Modular.to.pushReplacementNamed('/home');
    }
  }
}

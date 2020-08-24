import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileControllerBase with _$ProfileController;
const register_URL =
    'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD8YgMVxavDToMD4JXWhX2QQsgb5FQpTtc';

abstract class _ProfileControllerBase with Store {
  @observable
  String name = '';
  @observable
  String email = '';
  @observable
  String password = '';
  @observable
  String confirmPassword = '';
  @observable
  String token = '';

  @action
  Future signUp() async {
    if (password == confirmPassword) {
      final response = await http.post(register_URL,
          body: json.encode({
            "email": email,
            "password": password,
            "returnSecureToken": true
          }));
      if (response.statusCode != 200) {
        return;
      } else {
        token = json.decode(response.body)["localId"];
        Modular.to.pushReplacementNamed('/');
        addUser();
      }
    } else {
      return;
    }
  }

  @action
  Future addUser() async {
    Firestore.instance.collection('profile').document(token).setData({
      'name': name,
      'email': email,
      'token': token,
      'gestor': false,
    });
  }
}

import 'package:elis/app/modules/auth/form/form_widget.dart';
import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'auth_controller.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key key, this.title = "Auth"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Opacity(
              opacity: 0.8,
              child: Container(
                height: sh,
                width: sw,
                decoration: BoxDecoration(
                  color: colorA,
                  /*image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/43/87/83/438783dc7010db040bee19a09fd5ea88.jpg'),
                        fit: BoxFit.fill)*/
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                height: sh * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: sw,
                    ),
                    FormWidget(
                      hint: 'Email',
                      obscure: false,
                      onChanged: (value) {},
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: sh * 0.03,
                    ),
                    FormWidget(
                      hint: 'Password',
                      obscure: true,
                      onChanged: (value) {},
                      type: TextInputType.text,
                    ),
                    SizedBox(
                      height: sh * 0.03,
                    ),
                    Container(
                        height: sh * 0.04,
                        width: sw * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(sw)),
                        child: FlatButton(
                            onPressed: () {
                              Modular.to.pushReplacementNamed('/home');
                            },
                            child: Text('LOGIN'))),
                    SizedBox(
                      height: sh * 0.03,
                    ),
                    Container(
                        height: sh * 0.04,
                        width: sw * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(sw)),
                        child: FlatButton(
                            onPressed: () {
                              Modular.to.pushReplacementNamed('/home');
                            },
                            child: Text('REGISTER'))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

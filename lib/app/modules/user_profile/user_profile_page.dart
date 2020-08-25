import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'user_profile_controller.dart';

class UserProfilePage extends StatefulWidget {
  final String title;
  const UserProfilePage({Key key, this.title = "UserProfile"})
      : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState
    extends ModularState<UserProfilePage, UserProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorA,
        elevation: 0,
      ),
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: sw * 0.05, vertical: sh * 0.03),
        width: sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: Raphael',
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            Text(
              'Email: raaschraphael@gmail.com',
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            Text(
              'CRP: 4545316513561',
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            SizedBox(
              height: sh * 0.05,
            ),
            Container(
              height: sh * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black12,
                    offset: Offset(2, 2),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

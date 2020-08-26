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
              padding: EdgeInsets.symmetric(
                  vertical: sh * 0.02, horizontal: sw * 0.03),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: sw,
                  ),
                  Text(
                    'Instituição: Universidade Federal de Ouro Preto',
                    style: TextStyle(color: colorA, fontSize: sh * 0.02),
                  ),
                  Text(
                    'Titulo: Psicologia Infatil',
                    style: TextStyle(color: colorA, fontSize: sh * 0.02),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ],
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

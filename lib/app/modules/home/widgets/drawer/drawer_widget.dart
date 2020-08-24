import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: sh * 0.1,
            color: colorA,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Caso Clinico'),
            onTap: () {
              Modular.to.pushNamed('/caso/');
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Cursos'),
            onTap: () {
              Modular.to.pushNamed('/curso/');
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'curse_controller.dart';

class CursePage extends StatefulWidget {
  final String title;
  const CursePage({Key key, this.title = "Curse"}) : super(key: key);

  @override
  _CursePageState createState() => _CursePageState();
}

class _CursePageState extends ModularState<CursePage, CurseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}

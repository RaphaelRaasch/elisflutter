import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'case_controller.dart';

class CasePage extends StatefulWidget {
  final String title;
  const CasePage({Key key, this.title = "Case"}) : super(key: key);

  @override
  _CasePageState createState() => _CasePageState();
}

class _CasePageState extends ModularState<CasePage, CaseController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorA,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Nome',
              ),
            ),
          ),
          Container(
            width: sw * 0.8,
            height: sh * 0.1,
            padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
            color: Colors.white,
            child: TextFormField(
              minLines: null,
              maxLines: null,
              maxLength: 144,
              expands: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Descrição',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

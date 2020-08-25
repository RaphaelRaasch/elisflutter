import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'caso_clinico_controller.dart';

class CasoClinicoPage extends StatefulWidget {
  final String title;
  const CasoClinicoPage({Key key, this.title = "CasoClinico"})
      : super(key: key);

  @override
  _CasoClinicoPageState createState() => _CasoClinicoPageState();
}

class _CasoClinicoPageState
    extends ModularState<CasoClinicoPage, CasoClinicoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorA,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorA,
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: sw,
                    height: sh * 0.02,
                  ),
                  Container(
                    width: sw * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                    child: TextFormField(
                      onChanged: (value) {
                        controller.title = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Titulo',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Container(
                    width: sw * 0.8,
                    height: sh * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(
                        horizontal: sw * 0.03, vertical: sh * 0.01),
                    child: TextFormField(
                      minLines: null,
                      maxLines: null,
                      maxLength: 250,
                      expands: true,
                      onChanged: (value) {
                        controller.description = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Descrição',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addCaso();
        },
        child: Icon(
          Icons.add,
          color: colorA,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

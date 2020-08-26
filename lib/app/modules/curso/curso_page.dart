import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_shifter/mask_shifter.dart';
import 'curso_controller.dart';

class CursoPage extends StatefulWidget {
  final String title;
  const CursoPage({Key key, this.title = "Curso"}) : super(key: key);

  @override
  _CursoPageState createState() => _CursoPageState();
}

class _CursoPageState extends ModularState<CursoPage, CursoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    DatePickerController _controller = DatePickerController();
    DateTime _selectedValue = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                    child: TextFormField(
                      onChanged: (value) {
                        controller.local = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Local',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Container(
                    width: sw * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        var valor = int.parse(value);
                        controller.horas = valor;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Quantidade de horas',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Container(
                    width: sw * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                    child: TextFormField(
                      inputFormatters: [
                        MaskedTextInputFormatterShifter(
                            maskONE: 'XX/XX', maskTWO: 'xx/xx')
                      ],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        controller.data = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Data',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                  Container(
                    width: sw * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(sh * 0.02)),
                    padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        controller.description = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sh * 0.03,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addCurso();
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

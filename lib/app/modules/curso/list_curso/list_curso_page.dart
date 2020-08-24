import 'package:elis/app/modules/colors.dart';
import 'package:elis/app/modules/curso/curso/curso_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'list_curso_controller.dart';

class ListCursoPage extends StatefulWidget {
  final String title;
  const ListCursoPage({Key key, this.title = "ListCurso"}) : super(key: key);

  @override
  _ListCursoPageState createState() => _ListCursoPageState();
}

class _ListCursoPageState
    extends ModularState<ListCursoPage, ListCursoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorA,
      ),
      body: Observer(
        builder: (context) {
          controller.getCurso();
          return ListView.builder(
              itemCount: controller.cursos.length,
              itemBuilder: (context, index) {
                var curso = controller.cursos[index];
                return CursoWidget(
                  title: curso.titulo,
                  
                  description: curso.description,
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/curso/addcurso');
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

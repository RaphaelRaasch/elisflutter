import 'package:elis/app/modules/caso_clinico/caso/caso_widget.dart';
import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'lista_caso_controller.dart';

class ListaCasoPage extends StatefulWidget {
  final String title;
  const ListaCasoPage({Key key, this.title = "Casos Clínicos"})
      : super(key: key);

  @override
  _ListaCasoPageState createState() => _ListaCasoPageState();
}

class _ListaCasoPageState
    extends ModularState<ListaCasoPage, ListaCasoController> {
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
      body: Observer(
        builder: (context) {
          controller.getCollects();
          return Container(
            height: sh,
            color: Colors.white,
            child: ListView.builder(
              itemCount: controller.casos.length,
              itemBuilder: (context, index) {
                var caso = controller.casos[index];
                return CasoWidget(
                  title: caso.titulo,
                  description: caso.description,
                  onPressed: () {
                    Modular.to.pushNamed('/caso/comment', arguments: caso);
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/caso/addcaso');
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

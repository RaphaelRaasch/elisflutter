import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'curso_controller.g.dart';

class CursoController = _CursoControllerBase with _$CursoController;

abstract class _CursoControllerBase with Store {
  @observable
  String title = '';
  @observable
  String data;
  @observable
  String local = '';
  @observable
  String description = '';
  @observable
  int horas = 0;

  @action
  Future addCurso() async {
    await Firestore.instance.collection('cursos').document().setData({
      'titulo': title,
      'data': data,
      'local': local,
      'tempo': horas,
      'description': description,
    });
    Modular.to.pop();
  }
}

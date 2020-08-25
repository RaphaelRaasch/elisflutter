import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/curso_model.dart';
import 'package:mobx/mobx.dart';

part 'curso_controller.g.dart';

class CursoController = _CursoControllerBase with _$CursoController;

abstract class _CursoControllerBase with Store {
  List<CursoModel> model;

  @observable
  List<CursoModel> cursos = [];
  @action
  Future getCollects() async {
    final QuerySnapshot coleta =
        await Firestore.instance.collection('cursos').getDocuments();
    cursos =
        coleta.documents.map((data) => CursoModel.fromDocument(data)).toList();
  }
}

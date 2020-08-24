import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/curso_model.dart';
import 'package:mobx/mobx.dart';

part 'list_curso_controller.g.dart';

class ListCursoController = _ListCursoControllerBase with _$ListCursoController;

abstract class _ListCursoControllerBase with Store {
  List<CursoModel> model;

  @observable
  List<CursoModel> cursos = [];
  @action
  Future getCurso() async {
    final QuerySnapshot coleta =
        await Firestore.instance.collection('cursos').getDocuments();
    cursos =
        coleta.documents.map((data) => CursoModel.fromDocument(data)).toList();
  }
}

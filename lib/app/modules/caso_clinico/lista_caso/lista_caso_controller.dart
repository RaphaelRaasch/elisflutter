import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/caso_model.dart';
import 'package:mobx/mobx.dart';

part 'lista_caso_controller.g.dart';

class ListaCasoController = _ListaCasoControllerBase with _$ListaCasoController;

abstract class _ListaCasoControllerBase with Store {
  List<CasoModel> model;

  @observable
  List<CasoModel> casos = [];
  @action
  Future getCollects() async {
    final QuerySnapshot coleta =
        await Firestore.instance.collection('casos').getDocuments();
    casos =
        coleta.documents.map((data) => CasoModel.fromDocument(data)).toList();
  }
}

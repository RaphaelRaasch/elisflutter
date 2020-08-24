import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'caso_clinico_controller.g.dart';

class CasoClinicoController = _CasoClinicoControllerBase
    with _$CasoClinicoController;

abstract class _CasoClinicoControllerBase with Store {
  final UserStore userStore;
  _CasoClinicoControllerBase(this.userStore);
  @observable
  String title = '';
  @observable
  String description = '';

  @action
  Future addCaso() async {
    Firestore.instance
        .collection('caso${userStore.user.localId}')
        .document()
        .setData({
      'titulo': title,
      'description': description,
      'aprovado': false,
    });
    addPublicCaso();
  }

  @action
  Future addPublicCaso() async {
    await Firestore.instance.collection('casos').document().setData({
      'titulo': title,
      'description': description,
      'aprovado': false,
      'dataCriacao': Timestamp.now()
    });
    Modular.to.pop();
  }
}

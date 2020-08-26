import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/formacao_model.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:mobx/mobx.dart';

part 'user_profile_controller.g.dart';

class UserProfileController = _UserProfileControllerBase
    with _$UserProfileController;

abstract class _UserProfileControllerBase with Store {
  final UserStore userStore;

  _UserProfileControllerBase(this.userStore);

  @action
  Future addFormacao() async {
    Firestore.instance
        .collection('profile')
        .document(userStore.user.localId)
        .collection('formacao')
        .document()
        .setData({
      "instituicao": "universidade Federal de ouro preto",
      "titulo": "Psicologia Infantil",
      "concluido": false,
    });
  }

  List<FormacaoModel> model;

  @observable
  List<FormacaoModel> formacao = [];
  @action
  Future getFormacao() async {
    final QuerySnapshot form = await Firestore.instance
        .collection('profile')
        .document(userStore.user.localId)
        .collection('formacao')
        .getDocuments();
    formacao =
        form.documents.map((data) => FormacaoModel.fromDocument(data)).toList();
  }
}

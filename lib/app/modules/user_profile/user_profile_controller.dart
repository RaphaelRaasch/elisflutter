import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/formacao_model.dart';
import 'package:elis/app/modules/model/profile_model.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:mobx/mobx.dart';

part 'user_profile_controller.g.dart';

class UserProfileController = _UserProfileControllerBase
    with _$UserProfileController;

abstract class _UserProfileControllerBase with Store {
  final UserStore userStore;

  _UserProfileControllerBase(this.userStore);
  @observable
  String name = '';
  @observable
  String email = '';
  @observable
  String crp = '';
  @observable
  bool gestor = false;
  @observable
  String instituicao = '';
  @observable
  String title = '';
  @observable
  bool card = false;

  @action
  Future addFormacao() async {
    if (card == false) {
      card = true;
    } else {
      Firestore.instance
          .collection('profile')
          .document(userStore.user.localId)
          .collection('formacao')
          .document()
          .setData({
        "instituicao": instituicao,
        "titulo": title,
        "concluido": false,
      });
      card = false;
    }
  }

  @action
  Future deletFormacao(id) async {
    Firestore.instance
        .collection('profile')
        .document(userStore.user.localId)
        .collection('formacao')
        .document(id)
        .delete();
  }

  List<ProfileModel> pmodel;

  @observable
  List<ProfileModel> profiles = [];
  @action
  Future getProfile() async {
    final profile = Firestore.instance
        .collection('profile')
        .document(userStore.user.localId)
        .get()
        .then((value) {
      name = (value.data['name']);
      email = (value.data['email']);
      crp = (value.data['crp']);
    });
  }

  List<FormacaoModel> fmodel;

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

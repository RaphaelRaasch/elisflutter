import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/model/comment_model.dart';
import 'package:elis/app/modules/model/curso_model.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:mobx/mobx.dart';

part 'comment_controller.g.dart';

class CommentController = _CommentControllerBase with _$CommentController;

abstract class _CommentControllerBase with Store {
  final UserStore userStore;
  _CommentControllerBase(this.userStore);
  @observable
  String comment;
  @observable
  String id;

  List<CommentModel> model;

  @observable
  List<CommentModel> comments = [];
  @action
  Future getComments() async {
    final QuerySnapshot comment = await Firestore.instance
        .collection('casos')
        .document(id)
        .collection('comment')
        .getDocuments();
    comments = comment.documents
        .map((data) => CommentModel.fromDocument(data))
        .toList();
  }

  @action
  Future addcomment() async {
    await Firestore.instance
        .collection('casos')
        .document(id)
        .collection('comment')
        .document()
        .setData({'comment': comment, 'user': userStore.user.email});
  }
}

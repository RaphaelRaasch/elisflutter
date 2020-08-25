import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  String user;
  String comment;

  CommentModel.fromDocument(DocumentSnapshot snapshot) {
    user = snapshot['user'];
    comment = snapshot['comment'];
  }
}

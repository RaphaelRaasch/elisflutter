import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  String id;
  String user;
  String comment;

  CommentModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    user = snapshot['user'];
    comment = snapshot['comment'];
  }
}

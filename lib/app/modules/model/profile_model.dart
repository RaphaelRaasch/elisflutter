import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileModel {
  String id;
  String email;
  String name;
  bool gestor;

  ProfileModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    email = snapshot['email'];
    name = snapshot['name'];
    gestor = snapshot['gestor'];
  }
}

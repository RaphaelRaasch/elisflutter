import 'package:cloud_firestore/cloud_firestore.dart';

class CursoModel {
  String id;
  String titulo;
  String description;
  String local;
  int horas;
  Timestamp data;

  CursoModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    titulo = snapshot['titulo'];
    description = snapshot['description'];
    local = snapshot['local'];
    horas = snapshot['horas'];
    data = snapshot['data'];
  }
}

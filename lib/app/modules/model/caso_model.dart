import 'package:cloud_firestore/cloud_firestore.dart';

class CasoModel {
  String id;
  bool aprovado;
  String titulo;
  String description;

  CasoModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    titulo = snapshot['titulo'];
    description = snapshot['description'];
    aprovado = snapshot['aprovado'];
  }
}

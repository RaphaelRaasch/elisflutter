import 'package:cloud_firestore/cloud_firestore.dart';

class FormacaoModel {
  String id;
  bool concluido;
  String instituicao;
  String titulo;

  FormacaoModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    titulo = snapshot['titulo'];
    instituicao = snapshot['instituicao'];
    concluido = snapshot['concluido'];
  }
}

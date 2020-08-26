import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elis/app/modules/colors.dart';
import 'package:elis/app/modules/model/curso_model.dart';
import 'package:elis/app/modules/store/user_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../model/curso_model.dart';
import 'comment_controller.dart';

class CommentPage extends StatefulWidget {
  final String title;
  final CursoModel curso;
  const CommentPage({Key key, this.title = "Comentários", this.curso})
      : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends ModularState<CommentPage, CommentController> {
  //use 'controller' variable to access controller
  UserStore userStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: colorA,
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          controller.id = widget.curso.id;
          controller.getComments();
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: sh * 0.6,
                  child: ListView.builder(
                    itemCount: controller.comments.length,
                    itemBuilder: (context, index) {
                      var comments = controller.comments[index];
                      return ListTile(
                        title: Text(comments.user),
                        subtitle: Text(comments.comment),
                        trailing: comments.user == userStore.user.email
                            ? IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  controller.documentId = comments.id;
                                  controller.removecomment();
                                })
                            : SizedBox(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: sh * 0.03,
                ),
                TextField(
                  onChanged: (value) {
                    controller.comment = value;
                    print(value);
                  },
                  decoration: InputDecoration(hintText: 'Comentário'),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
<<<<<<< HEAD
          if (controller.comment.isEmpty) {
            return;
          } else {
            controller.addcomment();
          }
=======
          controller.addcomment();
>>>>>>> 9c1ae7d4d7783db79fc5292ea8af323bc6cccec9
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: colorA,
        ),
      ),
    );
  }
}

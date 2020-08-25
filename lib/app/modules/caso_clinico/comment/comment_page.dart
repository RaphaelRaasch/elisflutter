import 'package:elis/app/modules/colors.dart';
import 'package:elis/app/modules/model/caso_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'comment_controller.dart';

class CommentPage extends StatefulWidget {
  final String title;
  final CasoModel caso;
  const CommentPage({Key key, this.title = "Comment", this.caso})
      : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends ModularState<CommentPage, CommentController> {
  //use 'controller' variable to access controller

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
          controller.id = widget.caso.id;
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
                    decoration: InputDecoration(hintText: 'Comentario'),
                  )
                ]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addcomment();
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

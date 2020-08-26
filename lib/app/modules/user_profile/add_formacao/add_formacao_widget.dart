import 'package:flutter/material.dart';

class AddFormacaoWidget extends StatelessWidget {
  final inst;
  final title;
  const AddFormacaoWidget({this.inst, this.title});

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: sw * 0.05),
      height: sh * 0.3,
      color: Colors.white,
      child: Column(
        children: [
          TextFormField(
            onChanged: inst,
            decoration: InputDecoration(hintText: 'Instituição'),
          ),
          SizedBox(
            height: sh * 0.03,
          ),
          TextFormField(
            onChanged: title,
            decoration: InputDecoration(hintText: 'Titulo'),
          ),
        ],
      ),
    );
  }
}

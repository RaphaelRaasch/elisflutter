import 'package:flutter/material.dart';
import 'package:elis/app/modules/colors.dart';

class CursoWidget extends StatelessWidget {
  final title;
  final description;
  final data;
  final duracao;
  final local;
  final onPressed;

  const CursoWidget({
    @required this.title,
    @required this.description,
    @required this.data,
    @required this.duracao,
    @required this.local,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: sh * 0.01),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.black12,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding:
            EdgeInsets.symmetric(horizontal: sw * 0.02, vertical: sh * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: sh * 0.02),
                ),
                Text(data)
              ],
            ),
            SizedBox(
              height: sh * 0.03,
            ),
            Text(description),
            SizedBox(
              height: sh * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.comment,
                      color: colorB,
                    ),
                    onPressed: onPressed)
              ],
            )
          ],
        ),
      ),
    );
  }
}

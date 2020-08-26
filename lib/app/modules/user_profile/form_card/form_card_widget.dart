import 'package:flutter/material.dart';

import '../../colors.dart';

class FormCardWidget extends StatelessWidget {
  final instituicao;
  final titulo;
  final delete;

  const FormCardWidget({
    @required this.instituicao,
    @required this.titulo,
    @required this.delete,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: sh*0.002),
          child: Container(
        padding: EdgeInsets.symmetric(vertical: sh * 0.02, horizontal: sw * 0.03),
        height: sh * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.black12,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: sw,
            ),
            Text(
              instituicao,
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            Text(
              titulo,
              style: TextStyle(color: colorA, fontSize: sh * 0.02),
            ),
            Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: delete,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

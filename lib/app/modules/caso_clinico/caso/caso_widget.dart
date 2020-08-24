import 'package:elis/app/modules/colors.dart';
import 'package:flutter/material.dart';

class CasoWidget extends StatelessWidget {
  final title;
  final description;
  final onPressed;
  const CasoWidget({
    @required this.title,
    @required this.description,
    @required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: sh * 0.01),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black12,
            offset: Offset(0, 2),
          ),
        ]),
        padding:
            EdgeInsets.symmetric(horizontal: sw * 0.02, vertical: sh * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: sh * 0.02),
                ),
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

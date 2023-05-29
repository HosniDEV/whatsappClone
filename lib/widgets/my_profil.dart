import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';

class Statu extends StatelessWidget {
  Statu({
    super.key,
    this.image,
    this.active,
  });
  final String? image;
  bool? active = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            border: Border.all(width: 2, color: primaryColor)),
        child: CircleAvatar(radius: 30, backgroundImage: AssetImage('$image')),
      ),
      Positioned(
          right: 0,
          bottom: 6,
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: 18,
                color: primaryColor,
              ))),
    ]);
  }
}

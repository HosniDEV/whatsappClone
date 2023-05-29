import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
      ),
      padding: EdgeInsets.fromLTRB(14, 10, 14, 6),
      child: Row(
        children: [
          const Text(
            'Whatsapp',
            style: TextStyle(
                letterSpacing: 2,
                fontSize: 18,
                fontFamily: 'myfont',
                fontWeight: FontWeight.bold,
                color: primaryColor),
          ),
          const Spacer(),
          Row(
            children: [
              Icon(
                Icons.phone,
                size: 20,
                color: primaryColor.withOpacity(0.7),
              ),
              SizedBox(
                width: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.send,
                    size: 20,
                    color: primaryColor.withOpacity(0.7),
                  ),
                  const Positioned(
                    top: -4,
                    right: -4,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 12, color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

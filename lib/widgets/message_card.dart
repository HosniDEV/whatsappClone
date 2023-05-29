import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';
import '../Styles/user.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.myUser,
  });

  final User myUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 2,
                color: primaryColor.withOpacity(0.2),
              )),
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage('${myUser.profilPicture}'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 4, color: secondColor)),
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: 8,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${myUser.name}',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${myUser.time}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                ],
              ),
              Text(
                '${myUser.message}',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black38),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Status extends StatelessWidget {
  Status({
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
        child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              '$image',
            )),
      ),
    ]);
  }
}

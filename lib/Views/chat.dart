import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/Models/settings.dart';
import 'package:whatsapp_clone/Styles/constants.dart';
import 'package:whatsapp_clone/Styles/user.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Styles/app_colors.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({this.user});
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                user: user,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        top: 0,
                        left: 0,
                        bottom: 0,
                        child: Opacity(
                            opacity: 0.1,
                            child: Container(
                              child: SvgPicture.asset(
                                'assets/svg/Artboard 1.svg',
                                color: primaryColor.withOpacity(0.6),
                                fit: BoxFit.cover,
                              ),
                            ))),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 15,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                        decoration: BoxDecoration(
                            color: secondColor,
                            border: Border.all(width: 0, color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        height: 50,
                        child: Row(children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: primaryColor.withOpacity(0.7),
                            child: Icon(
                              FontAwesomeIcons.camera,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Send a message",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.faceSmile,
                                color: Colors.black38,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Send',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}

class AppBar extends StatelessWidget {
  AppBar({
    super.key,
    this.user,
  });
  User? user;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CostumNavigationBar(),
                  ));
            },
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 20,
            foregroundImage: NetworkImage('${user!.profilPicture}'),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user!.name}',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text('Active 2h ago ',
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black45)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.phone,
                color: primaryColor,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.video,
                color: primaryColor,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

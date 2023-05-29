import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/Views/friends_page.dart';

import '../Styles/app_colors.dart';
import '../Views/groups_page.dart';
import '../Views/home_page.dart';
import '../Views/me_page.dart';

class CostumNavigationBar extends StatefulWidget {
  CostumNavigationBar({
    super.key,
  });

  @override
  State<CostumNavigationBar> createState() => _CostumNavigationBarState();
}

int _index = 0;

class _CostumNavigationBarState extends State<CostumNavigationBar> {
  List<Map<String, dynamic>> mybottom = [
    {'icon': FontAwesomeIcons.solidComment, 'title': 'Messages'},
    {'icon': FontAwesomeIcons.phone, 'title': 'Friends'},
    {'icon': FontAwesomeIcons.users, 'title': 'Groups'},
    {'icon': Icons.account_circle_rounded, 'title': 'Me'}
  ];
  List<Widget> myWidgets = [
    HomePage(),
    FriendsScreen(),
    GroupScreen(),
    MeScreen(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(
        FontAwesomeIcons.solidComment,
      ),
      label: 'Messages',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FontAwesomeIcons.addressCard,
      ),
      label: 'Friends',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        FontAwesomeIcons.users,
      ),
      label: 'Groups',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle_rounded,
      ),
      label: 'Me',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0.0,
              backgroundColor: primaryColor.withOpacity(0.6),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black.withOpacity(0.6),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w500),
              currentIndex: _index,
              onTap: (value) {
                setState(() {
                  _index = value;
                });
              },
              items: List.generate(items.length, (index) => items[index])),
        ),
      ),
      body: myWidgets[_index],
    );
  }
}

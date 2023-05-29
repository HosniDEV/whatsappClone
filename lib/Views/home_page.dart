import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';
import '../Styles/constants.dart';
import '../Styles/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/head_titles.dart';
import '../widgets/message_card.dart';
import '../widgets/my_profil.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<User> myUsers = User.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            const MyAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 6, 10, 0),
                              height: 80,
                              child: Statu(image: 'assets/images/profil.jpg'),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 6),
                              height: 80,
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: myUsers.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                        width: 10,
                                      ),
                                  itemBuilder: (context, index) {
                                    return Status(
                                        image: myUsers[index].profilPicture);
                                  }),
                            ),
                          ],
                        ),
                      ),
                      HeadTitle(first: 'Messages', second: 'View more'),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                        itemCount: myUsers.length,
                        itemBuilder: (context, index) {
                          return MessageCard(myUser: myUsers[index]);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

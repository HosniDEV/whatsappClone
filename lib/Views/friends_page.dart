import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Styles/app_colors.dart';

import '../Styles/constants.dart';
import '../Styles/user.dart';
import '../widgets/head_titles.dart';
import '../widgets/message_card.dart';
import '../widgets/mycontacts.dart';
import 'chat.dart';

class FriendsScreen extends StatefulWidget {
  FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  List<User> myUsers = User.myContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                defaultPadding, defaultPadding, defaultPadding, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Search',
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Contacts',
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
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
                          User ls = myUsers[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ChatScreen(user: myUsers[index]),
                                  ));
                            },
                            child: Dismissible(
                              background: Center(child: Text('Remove')),
                              key: UniqueKey(),
                              onDismissed: (direction) {
                                setState(() {
                                  myUsers.remove(index);
                                });
                              },
                              child: MyContact(
                                myUser: myUsers[index],
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}

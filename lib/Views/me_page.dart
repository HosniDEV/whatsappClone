import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/Models/settings.dart';
import 'package:whatsapp_clone/Styles/constants.dart';

import '../Styles/app_colors.dart';
import '../widgets/app_bar.dart';

class MeScreen extends StatelessWidget {
  MeScreen({super.key});
  List<Settings> mySettings = Settings.mySettings;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            border: Border.all(width: 2, color: primaryColor)),
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/profil.jpg')),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Cr Hosni',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          Text(
                            'Junior Full stack developer',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black38,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Icon(
                        FontAwesomeIcons.qrcode,
                        size: 35,
                        color: primaryColor.withOpacity(0.7),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: mySettings.length,
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(
                            mySettings[index].icon,
                            size: 20,
                            color: primaryColor.withOpacity(0.4),
                          ),
                          title: Text(
                            '${mySettings[index].title}',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('${mySettings[index].description}',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                        );
                      })
                ],
              ),
            ),
          ),
        ));
  }
}

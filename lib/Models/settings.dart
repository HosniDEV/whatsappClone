import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings {
  IconData? icon;
  String? title;
  String? description;
  Settings({
    this.title,
    this.description,
    this.icon,
  });

  static List<Settings> mySettings = [
    Settings(
        title: 'Account',
        description: 'Security notifications,change number ',
        icon: FontAwesomeIcons.key),
    Settings(
        title: 'Privacy',
        description: 'Black contacts,disappearing ',
        icon: FontAwesomeIcons.lock),
    Settings(
        title: 'Avatar',
        description: 'Create,edit,profile photo ',
        icon: FontAwesomeIcons.icons),
    Settings(
        title: 'Chats',
        description: 'Themes,wallpapers,chat history ',
        icon: FontAwesomeIcons.commentDots),
    Settings(
        title: 'Notifications',
        description: 'Message,group & call tones ',
        icon: FontAwesomeIcons.bell),
    Settings(
        title: 'Storage and data',
        description: 'Network usage,auto-download ',
        icon: FontAwesomeIcons.lock),
    Settings(
        title: 'App language',
        description: 'English(phone\'s language) ',
        icon: FontAwesomeIcons.globe),
    Settings(
        title: 'Help',
        description: 'Help centre,contact us,privacy policy',
        icon: FontAwesomeIcons.circleQuestion),
    Settings(title: 'Invite a friend', icon: FontAwesomeIcons.userGroup),
  ];
}

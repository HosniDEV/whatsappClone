import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Column(
            children: [
              const MyAppBar(),
            ],
          ),
        ));
  }
}

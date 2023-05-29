import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  HeadTitle({super.key, this.first, this.second});
  final String? first;
  String? second;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$first',
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        const Spacer(),
        Text(
          '$second',
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black45, fontSize: 12),
        ),
      ],
    );
  }
}

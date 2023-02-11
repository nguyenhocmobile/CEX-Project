import 'package:flutter/material.dart';

class ButtonBottomBar extends StatelessWidget {
  final IconData icon;
  final String title;
  ButtonBottomBar({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        SizedBox(
          height: 5,
        ),
        Text(title),
      ],
    );
  }
}

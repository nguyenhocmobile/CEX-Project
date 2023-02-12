import 'package:flutter/material.dart';

class ButtonMainHandle extends StatelessWidget {
  final IconData icon;
  final String title;
  ButtonMainHandle({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            height: 7,
          ),
          Text(title),
        ],
      ),
    );
  }
}

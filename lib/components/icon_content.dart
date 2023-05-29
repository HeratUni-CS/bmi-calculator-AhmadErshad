import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
 final IconData iconData;
 final String label;

  // ignore: prefer_const_constructors_in_immutables
  IconContent({super.key, required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        iconData,
        size: 65,
        color: const Color(0xFF868892),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        label,
         style: kLabelStyle,
      ),
      ],
    );
  }
}

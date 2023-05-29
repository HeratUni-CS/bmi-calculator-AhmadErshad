import 'package:flutter/material.dart';
import 'constants.dart';
// ignore: must_be_immutable
class BottomButton extends StatelessWidget {
  void Function() onPressed; 
  String label;

  BottomButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 80,
        margin: const EdgeInsets.only(top: 10),
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
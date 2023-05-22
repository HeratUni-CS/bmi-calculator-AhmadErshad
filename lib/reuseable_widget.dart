import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ReusableWidget({required this.color, this.child, this.onPressed});
  // late Color color;
  final Color color;
  // can be empty by adding ? at the end of var name
  final Widget? child;
  final void Function()? onPressed;
  // final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: child,
          ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class LayoutContainer extends StatelessWidget {
  Function()? onPressed;
  Color? color;
  Widget? child;
  LayoutContainer({this.color,this.child,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
      ),
    );
  }
}
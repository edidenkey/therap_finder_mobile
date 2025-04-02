import 'package:flutter/material.dart';

class AppCircularProgressBar extends StatelessWidget {
  const AppCircularProgressBar({
    Key? key,
    this.color,
    this.strokeWidth = 2.5,
  }) : super(key: key);

  final Color? color;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color ?? Theme.of(context).disabledColor,
      strokeWidth: strokeWidth,
    );
  }
}

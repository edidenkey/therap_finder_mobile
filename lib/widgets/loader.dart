import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

import 'circular_progress_bar.dart';

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
    this.color,
    this.strokeWidth = 3,
    this.padding = 20,
  }) : super(key: key);

  final Color? color;
  final double strokeWidth;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: 40,
          height: 40,
          child: AppCircularProgressBar(
            color: color ?? AppThemes.lightPalette.shade400,
            strokeWidth: strokeWidth,
          ),
        ),
      ),
    );
  }
}

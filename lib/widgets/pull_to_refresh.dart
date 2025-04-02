import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import 'package:theraplib_mobile/constants/index.dart';

class PullToRefresh extends StatelessWidget {
  const PullToRefresh({
    Key? key,
    required this.child,
    required this.onRefresh,
    this.color,
    this.backgroundColor,
    this.height = 80,
    this.animationDurationInMilliseconds = 300,
  }) : super(key: key);

  final Widget child;
  final Future Function() onRefresh;
  final Color? color;
  final Color? backgroundColor;
  final double height;
  final int animationDurationInMilliseconds;

  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      onRefresh: onRefresh,
      showChildOpacityTransition: false,
      color: color ?? Colors.white,
      backgroundColor: backgroundColor ?? AppThemes.lightPalette.shade400,
      height: height,
      springAnimationDurationInMilliseconds: animationDurationInMilliseconds,
      child: child,
    );
  }
}

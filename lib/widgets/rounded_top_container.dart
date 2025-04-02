import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedTopContainer extends StatelessWidget {
  const RoundedTopContainer({
    Key? key,
    this.showTopBar = false,
    this.borderRadius = 20,
    required this.child,
  }) : super(key: key);

  final bool showTopBar;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
      child: Ink(
        padding: EdgeInsets.only(top: showTopBar ? 0 : 20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showTopBar)
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 7, bottom: 13),
                width: context.width * 0.1,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
            Flexible(child: child),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:theraplib_mobile/widgets/index.dart';

class EmptyPageStateBuilder extends StatelessWidget {
  const EmptyPageStateBuilder({
    Key? key,
    this.padding,
    this.scrollController,
    required this.imageAsset,
    required this.title,
    required this.description,
    this.actionIcon = Icons.refresh_rounded,
    required this.actionText,
    required this.onPressed,
  }) : super(key: key);

  final EdgeInsetsGeometry? padding;
  final ScrollController? scrollController;
  final Widget imageAsset;
  final String title;
  final String description;
  final IconData actionIcon;
  final String actionText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: padding ?? const EdgeInsets.fromLTRB(20, 0, 20, 20),
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: imageAsset,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 20,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.black87,
                    height: 1.3,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            AppButton(
              onPressed: onPressed,
              icon: actionIcon,
              text: actionText,
            ),
          ],
        ),
      ),
    );
  }
}

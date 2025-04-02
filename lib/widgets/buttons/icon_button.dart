import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    this.disabled = false,
    required this.onPressed,
    required this.icon,
    this.iconSize = 24,
    this.iconColor,
    this.tooltip,
  }) : super(key: key);

  final bool disabled;
  final void Function()? onPressed;
  final IconData icon;
  final double iconSize;
  final Color? iconColor;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: disabled ? null : onPressed,
      icon: Icon(
        icon,
        color: disabled ? Theme.of(context).disabledColor : iconColor,
      ),
      iconSize: iconSize,
      tooltip: tooltip,
      splashRadius: iconSize,
      constraints: BoxConstraints(
        maxWidth: iconSize,
        maxHeight: iconSize,
      ),
    );
  }
}

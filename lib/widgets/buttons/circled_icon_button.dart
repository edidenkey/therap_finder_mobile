import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

class AppCircledIconButton extends StatelessWidget {
  const AppCircledIconButton({
    Key? key,
    required this.onPressed,
    this.disabled = false,
    this.margin,
    this.tooltip,
    this.size = 55,
    required this.icon,
    this.iconSize = 24,
    this.iconColor,
    this.borderWidth = 1,
    this.borderColor,
    this.elevation = 0,
    this.shadowColor = Colors.black26,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  final void Function() onPressed;
  final bool disabled;
  final EdgeInsetsGeometry? margin;
  final String? tooltip;
  final double size;
  final IconData icon;
  final double iconSize;
  final Color? iconColor;
  final double borderWidth;
  final Color? borderColor;
  final double elevation;
  final Color shadowColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return tooltip != null
        ? Tooltip(
            message: tooltip!,
            child: _buildButton(),
          )
        : _buildButton();
  }

  Widget _buildButton() {
    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.hardEdge,
      margin: margin,
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: CircleBorder(
          side: borderWidth == 0
              ? BorderSide.none
              : BorderSide(
                  width: borderWidth,
                  color: disabled || borderColor == null ? Colors.grey.shade200 : borderColor!,
                ),
        ),
        shadows: [
          if (elevation != 0) BoxShadow(color: shadowColor, blurRadius: elevation),
        ],
      ),
      child: Material(
        color: backgroundColor,
        shape: CircleBorder(
          side: borderWidth == 0
              ? BorderSide.none
              : BorderSide(
                  width: borderWidth,
                  color: disabled || borderColor == null ? Colors.grey.shade200 : borderColor!,
                ),
        ),
        child: InkWell(
          onTap: disabled ? null : onPressed,
          borderRadius: BorderRadius.all(Radius.circular(size)),
          child: Icon(
            icon,
            color: disabled ? Colors.grey.shade300 : iconColor ?? AppThemes.lightPalette.shade400,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}

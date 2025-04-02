import 'package:flutter/material.dart';

import '../circular_progress_bar.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    Key? key,
    this.disabled = false,
    this.loading = false,
    required this.onPressed,
    this.width,
    this.icon,
    required this.text,
    this.textSize = 16,
    this.textColor,
    this.borderRadius = 8,
    this.padding = 10,
  }) : super(key: key);

  final bool disabled;
  final bool loading;
  final void Function() onPressed;
  final double? width;
  final IconData? icon;
  final String text;
  final double textSize;
  final Color? textColor;
  final double borderRadius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    final Color color = disabled ? Theme.of(context).disabledColor : textColor ?? Theme.of(context).primaryColor;

    return SizedBox(
      width: width,
      child: OutlinedButton(
        onPressed: disabled || loading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(horizontal: (2 * padding), vertical: padding),
        ),
        child: loading
            ? SizedBox(
                width: textSize + padding,
                height: textSize + padding,
                child: const AppCircularProgressBar(),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: icon != null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          icon,
                          color: color,
                          size: textSize + 6,
                        ),
                        const SizedBox(width: 6),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: color,
                            fontSize: textSize,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

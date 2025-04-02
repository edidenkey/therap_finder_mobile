import 'package:flutter/material.dart';

class ItemChip extends StatelessWidget {
  const ItemChip({
    Key? key,
    required this.text,
    this.textColor,
    required this.bgColor,
    required this.icon,
    this.iconColor,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color bgColor;
  final IconData icon;
  final Color? iconColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      color: bgColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Wrap(
            children: [
              Icon(icon, color: iconColor, size: 20),
              const SizedBox(width: 10),
              Text(
                text,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AlertTile extends StatelessWidget {
  const AlertTile({
    Key? key,
    required this.message,
    required this.icon,
    required this.color,
    this.onTap,
  }) : super(key: key);

  final String message;
  final IconData icon;
  final MaterialColor color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(icon, size: 20, color: color.shade700),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      message,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: color.shade700,
                          ),
                    ),
                  ),
                ),
                if (onTap != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: color.shade700,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

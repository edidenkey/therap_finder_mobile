import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    this.hasPadding = true,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final bool hasPadding;
  final String title;
  final String subtitle;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(hasPadding ? 20 : 0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(hasPadding ? 5 : 0, 10, 25, 10),
              child: Icon(icon, color: Colors.blueGrey.shade400),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          height: 1.3,
                        ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: onPressed != null,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                child: Icon(
                  Icons.edit_rounded,
                  color: AppThemes.lightPalette.shade400,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

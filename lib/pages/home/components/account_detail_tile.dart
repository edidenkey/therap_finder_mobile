import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

class AccountDetailTile extends StatelessWidget {
  const AccountDetailTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shadowColor: Colors.black12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          height: 1.3,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          height: 1.3,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: AppThemes.lightPalette.shade400,
                child: Icon(icon, color: Colors.white, size: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

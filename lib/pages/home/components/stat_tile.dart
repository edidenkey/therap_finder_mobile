import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';

class StatTile extends StatelessWidget {
  const StatTile({
    Key? key,
    required this.stat,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final double stat;
  final String title;
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppUtils.compactNumber(stat),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: AppThemes.lightPalette.shade400,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                      textScaleFactor: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Icon(
                        icon,
                        size: 18,
                        color: AppThemes.lightPalette.shade400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                textScaleFactor: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

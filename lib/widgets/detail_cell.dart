import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

class DetailCell extends StatelessWidget {
  final String title;
  final String subTitle;

  const DetailCell({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppThemes.lightPalette.withOpacity(0.15),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppThemes.lightPalette,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

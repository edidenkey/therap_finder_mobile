import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../buttons/index.dart';

class LocationPermissionBottomSheet extends StatelessWidget {
  const LocationPermissionBottomSheet({
    Key? key,
    this.isDismissible = true,
    required this.description,
    required this.onRequestPermission,
  }) : super(key: key);

  final bool isDismissible;
  final String description;
  final void Function() onRequestPermission;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDismissible,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: Colors.grey.shade200,
              child: SvgPicture.asset(
                'assets/images/enable_location.svg',
                width: 62,
                height: 62,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                description,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            AppButton(
              onPressed: onRequestPermission,
              text: 'Autoriser la géolocalisation',
              width: context.width,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    Key? key,
    required this.imageUrl,
    required this.oPressed,
  }) : super(key: key);

  final String imageUrl;
  final void Function() oPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Avatar(
                size: 150,
                imageUrl: imageUrl,
                placeholderPadding: 45,
                errorPadding: 35,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: AppThemes.lightPalette.shade400,
                    shape: const CircleBorder(),
                    shadows: const [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 1),
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: oPressed,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Compte'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(closeOverlays: true),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            _AccountTile(
              title: 'Changer mon numéro',
              icon: Icons.send_to_mobile_rounded,
              onPressed: () => Get.toNamed(AppPages.kChangePhone),
            ),
            _AccountTile(
              icon: Icons.key,
              title: 'Changer mon mot de passe',
              iconAngle: -(pi / 4),
              onPressed: () => Get.toNamed(AppPages.kChangePassword),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccountTile extends StatelessWidget {
  const _AccountTile({
    Key? key,
    this.visible = true,
    required this.title,
    required this.icon,
    this.iconAngle = 0,
    required this.onPressed,
  }) : super(key: key);

  final bool visible;
  final String title;
  final IconData icon;
  final double iconAngle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 20, 10),
                child: Transform.rotate(
                  angle: iconAngle,
                  child: Icon(icon, color: Colors.blueGrey.shade400),
                ),
              ),
              Flexible(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

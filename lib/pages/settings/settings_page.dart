import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    Key? key,
    required this.scrollController,
    required this.navigate,
    required this.canPop,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int) navigate;
  final void Function(bool) canPop;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _appService = AppService.instance;

  Future<bool> _logoutUser() async {
    try {
      await _appService.restClient.logout();
      await AppUtils.logoutUser();
      return true;
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode == 400) {
        AppUtils.showUnknownError();
      }
      return false;
    }
  }

  Future<void> _confirmLogoutUser() async {
    await AppUtils.showConfirmationDialog(
      message: 'Voulez-vous vous déconnecter et fermer la session courante ?',
      confirmText: 'Se déconnecter',
      onConfirm: _handleLogoutUser,
      onCancel: () => Get.until((_) => !Get.isDialogOpen!),
    );
  }

  void _handleLogoutUser() async {
    Get.until((_) => !Get.isDialogOpen!);
    widget.canPop(false);
    final isSuccess = await AppUtils.showLoadingOverlay(_logoutUser);
    widget.canPop(true);
    if (isSuccess) {
      Get.offNamed(Preferences.getInitialRoute(), preventDuplicates: false);
      AppUtils.showSnackBar(
        message: 'Vous êtes déconnecté avec succès.',
        icon: Ionicons.information_circle,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Paramètres'),
      ),
      body: SingleChildScrollView(
        controller: widget.scrollController,
        padding: const EdgeInsets.only(bottom: 20),
        child: Obx(
          () => _appService.authUser.value != null
              ? Column(
                  children: [
                    _ProfileRow(
                      user: _appService.authUser.value!,
                      onPressed: () => Get.toNamed(AppPages.kProfile),
                    ),
                    const Divider(height: 0),
                    const SizedBox(height: 5),
                    _SettingsTile(
                      title: 'Compte',
                      subtitle: 'Changer mon mot de passe, changer mon numéro.',
                      icon: Icons.key_rounded,
                      iconAngle: pi / 2,
                      onPressed: () => Get.toNamed(AppPages.kAccount),
                    ),
                    _SettingsTile(
                      visible: _appService.authUser.value!.role == AppRoles.therapeute,
                      title: 'Services',
                      subtitle: 'Consulter la liste de mes services.',
                      icon: Icons.medical_services_outlined,
                      onPressed: () => Get.toNamed(AppPages.kServices),
                    ),
                    _SettingsTile(
                      title: 'Commandes',
                      subtitle: _appService.authUser.value!.role == AppRoles.client
                          ? "Consulter l'historique de mes achats."
                          : "Consulter l'historique des produits achetés.",
                      icon: Icons.payments_outlined,
                      onPressed: () => Get.toNamed(AppPages.kOrders),
                    ),
                    _SettingsTile(
                      title: 'Déconnexion',
                      subtitle: "Se déconnecter de l'application.",
                      icon: Icons.logout_rounded,
                      onPressed: _confirmLogoutUser,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  const _ProfileRow({
    Key? key,
    required this.user,
    required this.onPressed,
  }) : super(key: key);

  final UserModel user;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Row(
          children: [
            Avatar(
              size: 70,
              imageUrl: AppUtils.getUserProfileUrl(user),
              placeholderPadding: 20,
              errorPadding: 15,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.lastname} ${user.firstname}',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user.email,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.blueGrey.shade600,
                          overflow: TextOverflow.ellipsis,
                          height: 1.2,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    Key? key,
    this.visible = true,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.iconAngle = 0,
    required this.onPressed,
  }) : super(key: key);

  final bool visible;
  final String title;
  final String subtitle;
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.15),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.blueGrey.shade600,
                            height: 1.15,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

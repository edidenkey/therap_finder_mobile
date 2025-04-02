import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ProfilePhotoPickerBottomSheet extends StatelessWidget {
  const ProfilePhotoPickerBottomSheet({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ProfileController controller;

  void _confirmDeleteUserPhoto() async {
    Get.until((_) => !Get.isBottomSheetOpen!);
    await AppUtils.showConfirmationDialog(
      message: 'Voulez-vous supprimer votre photo de profil ?',
      confirmText: 'Supprimer',
      onConfirm: controller.handleDeleteUserPhoto,
      onCancel: () => Get.until((_) => !Get.isDialogOpen!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Photo de profil',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !AppUtils.getUserProfileUrl(AppUtils.user!).contains('/images/profil/default.jpg'),
                child: AppIconButton(
                  onPressed: _confirmDeleteUserPhoto,
                  icon: Icons.delete,
                  tooltip: 'Supprimer cette photo',
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppCircledIconButton(
                    onPressed: controller.takePhoto,
                    icon: Icons.camera_alt_rounded,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Caméra',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                      letterSpacing: 0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppCircledIconButton(
                    onPressed: controller.pickPhoto,
                    icon: Icons.image_rounded,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Galerie',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black54,
                      letterSpacing: 0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
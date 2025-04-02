import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class NameEditBottomSheet extends StatelessWidget {
  const NameEditBottomSheet({
    Key? key,
    required this.controller,
    required this.formKey,
    required this.firstnameController,
    required this.lastnameController,
  }) : super(key: key);

  final ProfileController controller;
  final GlobalKey<FormState> formKey;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;

  @override
  Widget build(BuildContext context) {
    firstnameController.text = AppUtils.user!.firstname;
    lastnameController.text = AppUtils.user!.lastname;
    firstnameController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: firstnameController.text.length,
    );
    lastnameController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: lastnameController.text.length,
    );
    controller.updateFirstName(AppUtils.user!.firstname, formKey);
    controller.updateLastName(AppUtils.user!.lastname, formKey);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Modifier votre nom',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
            const SizedBox(height: 15),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => AppTextFormField(
                        controller: lastnameController,
                        validator: controller.validateLastName,
                        onChanged: (value) => controller.updateLastName(value, formKey),
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.person_outline,
                        labelText: 'Nom',
                        hintText: 'Nom',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        inputAction: TextInputAction.next,
                        autofocus: true,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => AppTextFormField(
                        controller: firstnameController,
                        validator: controller.validateFirstName,
                        onChanged: (value) => controller.updateFirstName(value, formKey),
                        onEditingComplete: controller.handleUpdateUserName,
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.person_outline,
                        labelText: 'Prénom',
                        hintText: 'Prénom',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.until((_) => !Get.isBottomSheetOpen!);
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Text(
                    'Annuler'.toUpperCase(),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: !controller.isNameFormValid.value ? null : controller.handleUpdateUserName,
                    child: Text(
                      'Enregistrer'.toUpperCase(),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

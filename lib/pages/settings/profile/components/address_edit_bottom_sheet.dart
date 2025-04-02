import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class AddressEditBottomSheet extends StatelessWidget {
  const AddressEditBottomSheet({
    Key? key,
    required this.controller,
    required this.formKey,
    required this.streetController,
    required this.postalCodeController,
    required this.departementController,
    required this.regionController,
    required this.countryController,
  }) : super(key: key);

  final ProfileController controller;
  final GlobalKey<FormState> formKey;
  final TextEditingController streetController;
  final TextEditingController postalCodeController;
  final TextEditingController departementController;
  final TextEditingController regionController;
  final TextEditingController countryController;

  @override
  Widget build(BuildContext context) {
    streetController.text = AppUtils.user!.street;
    postalCodeController.text = AppUtils.user!.postalCode;
    departementController.text = AppUtils.user!.department;
    regionController.text = AppUtils.user!.region;
    countryController.text = AppUtils.user!.country;
    streetController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: streetController.text.length,
    );
    postalCodeController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: postalCodeController.text.length,
    );
    departementController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: departementController.text.length,
    );
    regionController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: regionController.text.length,
    );
    countryController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: countryController.text.length,
    );
    controller.updateStreet(AppUtils.user!.street, formKey);
    controller.updatePostalCode(AppUtils.user!.postalCode, formKey);
    controller.updateDepartement(AppUtils.user!.department, formKey);
    controller.updateRegion(AppUtils.user!.region, formKey);
    controller.updateCountry(AppUtils.user!.country, formKey);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Modifier votre adresse',
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
                        controller: streetController,
                        validator: controller.validateStreet,
                        onChanged: (value) => controller.updateStreet(value, formKey),
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.home_outline,
                        labelText: 'Rue',
                        hintText: 'Rue',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        inputAction: TextInputAction.next,
                        autofocus: true,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => AppTextFormField(
                        controller: postalCodeController,
                        validator: controller.validatePostalCode,
                        onChanged: (value) => controller.updatePostalCode(value, formKey),
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.home_outline,
                        labelText: 'Code postal',
                        hintText: 'Code postal',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        inputAction: TextInputAction.next,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => AppTextFormField(
                        controller: departementController,
                        validator: controller.validateDepartement,
                        onChanged: (value) => controller.updateDepartement(value, formKey),
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.home_outline,
                        labelText: 'Département',
                        hintText: 'Département',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        inputAction: TextInputAction.next,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => AppTextFormField(
                        controller: regionController,
                        validator: controller.validateRegion,
                        onChanged: (value) => controller.updateRegion(value, formKey),
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.home_outline,
                        labelText: 'Région',
                        hintText: 'Région',
                        inputType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        inputAction: TextInputAction.next,
                        minLines: 1,
                        maxLines: 3,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => AppTextFormField(
                        controller: countryController,
                        validator: controller.validateCountry,
                        onChanged: (value) => controller.updateCountry(value, formKey),
                        onEditingComplete: controller.handleUpdateUserAddress,
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.home_outline,
                        labelText: 'Pays',
                        hintText: 'Pays',
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
                    onPressed: !controller.isAddressFormValid.value ? null : controller.handleUpdateUserAddress,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class EmailEditBottomSheet extends StatelessWidget {
  const EmailEditBottomSheet({
    Key? key,
    required this.controller,
    required this.formKey,
    required this.emailController,
  }) : super(key: key);

  final ProfileController controller;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    emailController.text = AppUtils.user!.email;
    emailController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: emailController.text.length,
    );
    controller.updateEmail(AppUtils.user!.email, formKey);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Modifier votre adresse email',
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
                        controller: emailController,
                        validator: controller.validateEmail,
                        onChanged: (value) => controller.updateEmail(value, formKey),
                        onEditingComplete: () => controller.handleUpdateUserEmail(formKey),
                        enabled: !controller.isLoading.value,
                        prefixIcon: Ionicons.mail_outline,
                        labelText: 'Adresse email',
                        hintText: 'Adresse email',
                        inputType: TextInputType.emailAddress,
                        autofocus: true,
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
                    onPressed:
                        !controller.isEmailFormValid.value ? null : () => controller.handleUpdateUserEmail(formKey),
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

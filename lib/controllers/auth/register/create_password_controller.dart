import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';

class CreatePasswordController extends GetxController {
  static CreatePasswordController get instance => Get.find();

  final RxBool isFormValid = false.obs;
  String _password = '';
  String _confirmPassword = '';

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe est obligatoire.';
    }
    return AppUtils.validatePassword(_password);
  }

  void updatePassword(String value, GlobalKey<FormState> formKey) {
    _password = value.trim();
    checkForm(formKey);
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirmez le mot de passe.';
    }
    if (_password != _confirmPassword) {
      return 'Les mots de passe ne correspondent pas.';
    }
    return null;
  }

  void updateConfirmNewPassword(String value, GlobalKey<FormState> formKey) {
    _confirmPassword = value.trim();
    checkForm(formKey);
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value = formKey.currentState != null && formKey.currentState!.validate();
  }

  Future<void> handleNext({
    required GlobalKey<FormState> formKey,
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
  }) async {
    FocusManager.instance.primaryFocus?.unfocus();
    checkForm(formKey);
    if (!isFormValid.value) return;
    Get.toNamed(AppPages.kRegisterAddress, parameters: {
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'phone': phone,
      'password': _password,
      'confirmPassword': _confirmPassword,
    });
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';

class ChangePhoneController extends GetxController {
  static ChangePhoneController get instance => Get.find();

  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _oldPhone = '';
  String _newPhone = '';

  String? validateOldPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le numéro de téléphone est obligatoire.';
    }
    if (AppUtils.isLoggedIn && AppUtils.user!.phone != value) {
      return 'Ce numéro de téléphone ne correspond pas à celui de votre compte.';
    }
    return null;
  }

  void updateOldPhone(String value, GlobalKey<FormState> formKey) {
    _oldPhone = value.trim();
    checkForm(formKey);
  }

  String? validateNewPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le numéro de téléphone est obligatoire.';
    }
    if (_newPhone.length < 6) {
      return 'Le numéro de téléphone doit contenir au minimum 6 caractères.';
    }
    if (_newPhone.length > 50) {
      return 'Le numéro de téléphone doit contenir au maximum 50 caractères.';
    }
    if (_oldPhone == _newPhone) {
      return "L'ancien et le nouveau numéro de téléphone ne peuvent pas être les mêmes.";
    }
    return null;
  }

  void updateNewPhone(String value, GlobalKey<FormState> formKey) {
    _newPhone = value.trim();
    checkForm(formKey);
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value = formKey.currentState != null && formKey.currentState!.validate();
  }

  Future<void> handleSubmit(GlobalKey<FormState> formKey) async {
    FocusManager.instance.primaryFocus?.unfocus();
    checkForm(formKey);
    if (!isFormValid.value) return;

    try {
      isSubmitting.value = true;
      ApiResponse response = await AppUtils.updateMeDetails(phone: _newPhone);
      await AppUtils.setUser(response);
      isSubmitting.value = false;
      Get.until((route) => [AppPages.kAccount, AppPages.kProfile].contains(route.settings.name));
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

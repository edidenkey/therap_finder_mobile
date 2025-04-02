import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class ChangePasswordController extends GetxController {
  static ChangePasswordController get instance => Get.find();

  final _appService = AppService.instance;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _currentPassword = '';
  String _newPassword = '';
  String _confirmNewPassword = '';
  bool _isCurrentPasswordCorrect = true;

  String? validateCurrentPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe est obligatoire.';
    }
    if (!_isCurrentPasswordCorrect) {
      return 'Ce mot de passe ne correspond pas à celui de votre compte.';
    }
    return null;
  }

  void updateCurrentPassword(String value, GlobalKey<FormState> formKey) {
    if (_currentPassword != value.trim()) {
      _currentPassword = value.trim();
      _isCurrentPasswordCorrect = true;
      checkForm(formKey);
    }
  }

  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe est obligatoire.';
    }
    if (_currentPassword == _newPassword) {
      return "L'actuel et le nouveau mot de passe ne peuvent être les mêmes.";
    }
    return AppUtils.validatePassword(_newPassword);
  }

  void updateNewPassword(String value, GlobalKey<FormState> formKey) {
    _newPassword = value.trim();
    checkForm(formKey);
  }

  String? validateConfirmNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirmez le mot de passe.';
    }
    if (_newPassword != _confirmNewPassword) {
      return 'Les mots de passe ne correspondent pas.';
    }
    return null;
  }

  void updateConfirmNewPassword(String value, GlobalKey<FormState> formKey) {
    _confirmNewPassword = value.trim();
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
      await _appService.restClient.updateMePassword(
        oldPassword: _currentPassword,
        newPassword: _newPassword,
        confirmNewPassword: _confirmNewPassword,
      );
      await AppUtils.logoutUser();
      isSubmitting.value = false;
      Get.offAllNamed(Preferences.getInitialRoute());
      return AppUtils.showSnackBar(
        message: 'Votre mot de passe a été mis à jour.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      // Incorrect current password
      if (e.response != null && e.response!.statusCode == 401) {
        isSubmitting.value = false;
        _isCurrentPasswordCorrect = false;
        return checkForm(formKey);
      }

      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

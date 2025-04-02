import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _email = '';
  String _password = '';
  bool _isCredentialsValid = true;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "L'adresse email est obligatoire.";
    }
    if (!GetUtils.isEmail(value)) {
      return "L'adresse email n'est pas valide.";
    }
    if (!_isCredentialsValid) {
      return 'Les identifiants fournis sont incorrects.';
    }
    return null;
  }

  void updateEmail(String value, GlobalKey<FormState> formKey) {
    if (_email != value.trim()) {
      _email = value.trim();
      _isCredentialsValid = true;
      checkForm(formKey);
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe est obligatoire.';
    }
    return null;
  }

  void updatePassword(String value, GlobalKey<FormState> formKey) {
    if (_password != value.trim()) {
      _password = value.trim();
      _isCredentialsValid = true;
      checkForm(formKey);
    }
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value =
        formKey.currentState != null && formKey.currentState!.validate();
  }

  Future<void> handleSubmit(GlobalKey<FormState> formKey) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!isFormValid.value) return;

    try {
      isSubmitting.value = true;
      ApiResponse response = await _restClient.login(
        email: _email,
        password: _password,
      );
      await AppUtils.loginUser(response);
      isSubmitting.value = false;
      Get.offAllNamed(Preferences.getInitialRoute());
      return AppUtils.showSnackBar(
        message: 'Vous êtes connecté avec succès.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      // Invalid credentials
      if (e.response != null) {
        isSubmitting.value = false;
        _isCredentialsValid = false;
        return checkForm(formKey);
      }

      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

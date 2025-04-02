import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class AccountDetailsController extends GetxController {
  static AccountDetailsController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _firstname = '';
  String _lastname = '';
  String _email = '';
  String _phone = '';
  bool _isEmailTaken = true;

  String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le prénom est obligatoire.';
    }
    if (_firstname.length < 2) {
      return 'Le prénom doit contenir au minimum 2 caractères.';
    }
    if (_firstname.length > 50) {
      return 'Le prénom doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateFirstName(String value, GlobalKey<FormState> formKey) {
    _firstname = value.trim();
    checkForm(formKey);
  }

  String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le nom est obligatoire.';
    }
    if (_lastname.length < 2) {
      return 'Le nom doit contenir au minimum 2 caractères.';
    }
    if (_lastname.length > 50) {
      return 'Le nom doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateLastName(String value, GlobalKey<FormState> formKey) {
    _lastname = value.trim();
    checkForm(formKey);
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "L'adresse email est obligatoire.";
    }
    if (!GetUtils.isEmail(value)) {
      return "L'adresse email n'est pas valide.";
    }
    if (_email.length > 50) {
      return "L'adresse email doit contenir au maximum 50 caractères.";
    }
    if (_isEmailTaken) {
      return 'Cette adresse email est déjà associée à un autre compte.';
    }
    return null;
  }

  void updateEmail(String value, GlobalKey<FormState> formKey) {
    if (_email != value.trim()) {
      _email = value.trim();
      _isEmailTaken = false;
      checkForm(formKey);
    }
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le numéro de téléphone est obligatoire.';
    }
    if (_phone.length < 6) {
      return 'Le numéro de téléphone doit contenir au minimum 6 caractères.';
    }
    if (_phone.length > 50) {
      return 'Le numéro de téléphone doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updatePhone(String value, GlobalKey<FormState> formKey) {
    _phone = value.trim();
    checkForm(formKey);
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value = formKey.currentState != null && formKey.currentState!.validate();
  }

  Future<void> handleNext(GlobalKey<FormState> formKey) async {
    FocusManager.instance.primaryFocus?.unfocus();
    checkForm(formKey);
    if (!isFormValid.value) return;

    try {
      isSubmitting.value = true;
      await _restClient.checkEmailUnique(email: _email);
      isSubmitting.value = false;
      Get.toNamed(AppPages.kRegisterCreatePassword, parameters: {
        'firstname': _firstname,
        'lastname': _lastname,
        'email': _email,
        'phone': _phone,
      });
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode == 422) {
        // Email is taken
        if (e.response!.data['message'] == 'The email has already been taken.') {
          _isEmailTaken = true;
          checkForm(formKey);
        } else {
          AppUtils.showUnknownError();
        }
      }
      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

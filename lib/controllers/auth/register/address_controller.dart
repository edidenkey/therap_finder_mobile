import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class AddressController extends GetxController {
  static AddressController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _street = '';
  String _postalCode = '';
  String _departement = '';
  String _region = '';
  String _country = '';

  String? validateStreet(String? value) {
    if (value == null || value.isEmpty) {
      return 'La rue est obligatoire.';
    }
    if (_street.length > 50) {
      return 'La rue doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateStreet(String value, GlobalKey<FormState> formKey) {
    _street = value.trim();
    checkForm(formKey);
  }

  String? validatePostalCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le code postal est obligatoire.';
    }
    if (_postalCode.length > 50) {
      return 'Le code postal doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updatePostalCode(String value, GlobalKey<FormState> formKey) {
    _postalCode = value.trim();
    checkForm(formKey);
  }

  String? validateDepartement(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le département est obligatoire.';
    }
    if (_departement.length > 50) {
      return 'Le département doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateDepartement(String value, GlobalKey<FormState> formKey) {
    _departement = value.trim();
    checkForm(formKey);
  }

  String? validateRegion(String? value) {
    if (value == null || value.isEmpty) {
      return 'La région est obligatoire.';
    }
    if (_region.length > 50) {
      return 'La région doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateRegion(String value, GlobalKey<FormState> formKey) {
    _region = value.trim();
    checkForm(formKey);
  }

  String? validateCountry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le pays est obligatoire.';
    }
    if (_country.length > 50) {
      return 'Le pays doit contenir au maximum 50 caractères.';
    }
    return null;
  }

  void updateCountry(String value, GlobalKey<FormState> formKey) {
    _country = value.trim();
    checkForm(formKey);
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value = formKey.currentState != null && formKey.currentState!.validate();
  }

  Future<void> handleSubmit({
    required GlobalKey<FormState> formKey,
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    FocusManager.instance.primaryFocus?.unfocus();
    checkForm(formKey);
    if (!isFormValid.value) return;

    try {
      isSubmitting.value = true;
      ApiResponse response = await _restClient.register(
        firstname: firstname,
        lastname: lastname,
        email: email,
        phone: phone,
        password: password,
        confirmPassword: confirmPassword,
        street: _street,
        postalCode: _postalCode,
        department: _departement,
        region: _region,
        country: _country,
      );
      await AppUtils.loginUser(response);
      isSubmitting.value = false;
      Get.offAllNamed(Preferences.getInitialRoute());
      return AppUtils.showSnackBar(
        message: 'Vous êtes connecté avec succès.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

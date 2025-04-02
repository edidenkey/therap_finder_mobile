import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class PaymentTypesController extends GetxController {
  static PaymentTypesController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  String _type = '';
  String _value = '';

  void selectPaymentType(String? paymentType) => _type = paymentType ?? '';

  String? validateValue(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le numéro de téléphone est obligatoire.';
    }
    return null;
  }

  void updateValue(String value, GlobalKey<FormState> formKey) {
    _value = value.trim();
    checkForm(formKey);
  }

  void checkForm(GlobalKey<FormState> formKey) {
    isFormValid.value = formKey.currentState != null && formKey.currentState!.validate() && _type.isNotEmpty;
  }

  // Future<void> addPaymentType(GlobalKey<FormState> formKey) async {
  //   FocusManager.instance.primaryFocus?.unfocus();
  //   checkForm(formKey);
  //   if (!isFormValid.value) return;
  //   try {
  //     isSubmitting.value = true;
  //     await _restClient.addPayInformation(type: _type, value: _value);
  //     isSubmitting.value = false;
  //   } on DioError catch (e) {
  //     // Unexpected error
  //     if (e.response != null && e.response!.statusCode! < 500) {
  //       AppUtils.showUnknownError();
  //     }
  //     isSubmitting.value = false;
  //   }
  // }

  Future<bool> onWillPop() async => !isSubmitting.value;
}

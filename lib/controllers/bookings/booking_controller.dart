import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class BookingController extends GetxController {
  static BookingController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxBool isSubmitting = false.obs;
  final RxBool isFormValid = false.obs;
  final Rx<ServiceModel?> selectedService = Rxn<ServiceModel>();
  DateTime meetingDateTime = DateTime.now();

  void selectService(ServiceModel? service) => selectedService.value = service;

  void updateDate({int? year, int? month, int? day, int? hour, int? minute}) {
    meetingDateTime = DateTime(
      year ?? meetingDateTime.year,
      month ?? meetingDateTime.month,
      day ?? meetingDateTime.day,
      hour ?? meetingDateTime.hour,
      minute ?? meetingDateTime.minute,
    );
    validateInputs();
  }

  void validateInputs() {
    final isMeetingDateValid = _isMeetingDateAfterToday();
    isFormValid.value = selectedService.value != null && isMeetingDateValid;
    if (!isMeetingDateValid) {
      AppUtils.showSnackBar(
        message: 'La date doit être au minimum demain.',
        icon: Ionicons.alert_circle,
      );
    }
  }

  bool _isMeetingDateAfterToday() {
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
    return meetingDateTime.isAfter(tomorrow);
  }

  Future<void> handleSubmit(int? meetingId) {
    if (meetingId != null) return updateMeeting(meetingId);
    return createMeeting();
  }

  Future<void> createMeeting() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!isFormValid.value) return;
    try {
      isSubmitting.value = true;
      await _restClient.createMeeting(
        date: meetingDateTime,
        clientId: AppUtils.user!.userObjectId,
        serviceId: selectedService.value!.id,
      );
      isSubmitting.value = false;
      Get.offAllNamed(AppPages.kDashboard, parameters: {'page-index': '2'});
      return AppUtils.showSnackBar(
        message: 'Demande de rendez-vous envoyée avec succès.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
      isSubmitting.value = false;
    }
  }

  Future<void> updateMeeting(int? meetingId) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!isFormValid.value) return;
    try {
      isSubmitting.value = true;
      await _restClient.updateMeeting(
        meetingId: meetingId!,
        date: meetingDateTime,
      );
      isSubmitting.value = false;
      Get.offAllNamed(AppPages.kDashboard, parameters: {'page-index': '2'});
      return AppUtils.showSnackBar(
        message: 'Demande de rendez-vous modifiée avec succès.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
      isSubmitting.value = false;
    }
  }

  Future<bool> onWillPop() async {
    if (isSubmitting.value) return false;
    Get.back(closeOverlays: true);
    return true;
  }
}

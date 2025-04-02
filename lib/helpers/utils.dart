import 'package:diacritic/diacritic.dart' as diacritic;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

abstract class AppUtils {
  // Dimensions
  static double minHeight(BuildContext context) => 0.3 * context.height;

  static double headerImageHeight(BuildContext context) =>
      context.isPortrait ? 0.35 * context.height : 0.5 * context.height;

  // Formaters
  static String removeDiacritics([String text = '']) => diacritic.removeDiacritics(text.toLowerCase());

  static bool isSameString(String first, String second) => removeDiacritics(first) == removeDiacritics(second);

  static String? validatePassword(String password) {
    // Min Length = 8
    if (password.length < 8) {
      return 'Le mot de passe doit contenir au minimum 8 caractères.';
    }
    // Min lowercase = 1
    if (!password.contains(RegExp('(?=.*[a-z])'))) {
      return 'Le mot de passe doit contenir au moins une lettre minuscule.';
    }
    // Min uppercase = 1
    if (!password.contains(RegExp('(?=.*[A-Z])'))) {
      return 'Le mot de passe doit contenir au moins une lettre majuscule.';
    }
    // Min digit = 1
    if (!password.contains(RegExp('(?=.*[0-9])'))) {
      return 'Le mot de passe doit contenir au moins un chiffre.';
    }
    // Min special char = 1
    if (!password.contains(RegExp('(?=.*[^A-Za-z0-9])'))) {
      return 'Le mot de passe doit contenir au moins un caractère spécial.';
    }
    // Max Length = 20
    if (password.length > 20) {
      return 'Le mot de passe doit contenir au maximum 20 caractères.';
    }
    return null;
  }

  static String compactNumber(double number, {String locale = 'fr_FR'}) {
    final NumberFormat formatter = NumberFormat.compact(locale: locale);
    return formatter.format(number);
  }

  static String formatNumber(double number, {String locale = 'fr_FR'}) {
    final NumberFormat formatter = NumberFormat.decimalPattern(locale);
    final formattedString = formatter.format(number);
    return formattedString.contains(',') ? formattedString : '$formattedString,0';
  }

  static bool isSameDay(DateTime from, DateTime to) {
    from = from.toUtc();
    to = to.toUtc();
    return from.year == to.year && from.month == to.month && from.day == to.day;
  }

  static String humanizeDate(DateTime date, {String locale = 'fr_FR'}) {
    var formatter = DateFormat.jm(locale);
    final now = DateTime.now();
    if (!isSameDay(date, now)) {
      if (date.year == now.year) {
        formatter = DateFormat.MMMd(locale);
      } else {
        formatter = DateFormat.yMd(locale);
      }
    }
    return formatter.format(date);
  }

  static String formatDate(DateTime date, {String locale = 'fr_FR'}) {
    final formatter = DateFormat.yMd(locale);
    return formatter.format(date);
  }

  static String formatLongDate(DateTime date, {String locale = 'fr_FR'}) {
    final formatter = DateFormat.yMMMd(locale);
    return formatter.format(date);
  }

  static String formatTime(DateTime date, {String locale = 'fr_FR'}) {
    final formatter = DateFormat.jm(locale);
    return formatter.format(date);
  }

  static String formatLongDateTime(DateTime date, {String locale = 'fr_FR'}) {
    return '${formatLongDate(date)} à ${formatTime(date)}';
  }

  static String formatTimer(int n) => n.toString().padLeft(2, '0');

  static String getProductFrontImageUrl(ProductModel product) {
    String url = '';
    if (product.images != null && product.images!.isNotEmpty) {
      final ImageObjectModel? frontImage =
          product.images!.firstWhereOrNull((imageObject) => imageObject.type == 'front');
      if (frontImage != null) url = AppConfigs.apiHost + frontImage.image.filePath;
    }
    return url;
  }

  static String getUserProfileUrl(UserModel user) {
    String url = '';
    if (user.images != null && user.images!.isNotEmpty) {
      final ImageModel? profileImage =
          user.images!.firstWhereOrNull((image) => image.imageObjectType == 'App\\Models\\ProfilImage');
      if (profileImage != null) url = AppConfigs.apiHost + profileImage.filePath;
    }
    return url;
  }

  static int getCartTotalPrice() {
    int price = 0;
    for (var item in AppService.instance.cartItems) {
      price += item.product.price * item.quantity;
    }
    return price;
  }

  // Meeting statuses
  static const List<MeetingStatusItem> meetingStatusItems = [
    MeetingStatusItem(title: 'Tout'),
    MeetingStatusItem(title: 'En attente', value: AppMeetingStatuses.pending, color: Colors.amber),
    MeetingStatusItem(title: 'Accepté', value: AppMeetingStatuses.accepted, color: Colors.blue),
    MeetingStatusItem(title: 'Refusé', value: AppMeetingStatuses.rejected, color: Colors.red),
    MeetingStatusItem(title: 'Annulé', value: AppMeetingStatuses.cancelled, color: Colors.red),
    MeetingStatusItem(title: 'Terminé', value: AppMeetingStatuses.completed, color: Colors.green),
  ];

  // Modals
  static Future<dynamic> showLoadingOverlay(Future<dynamic> Function() asyncFunction) {
    return Get.showOverlay(
      asyncFunction: asyncFunction,
      loadingWidget: const Center(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Loader(strokeWidth: 2.5, padding: 15),
        ),
      ),
    );
  }

  static void showSnackBar({required String message, required IconData icon}) {
    GetSnackBar(
      message: message,
      icon: Icon(icon, color: Colors.white, size: 26),
      shouldIconPulse: false,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      padding: const EdgeInsets.all(16),
      animationDuration: const Duration(milliseconds: 700),
      duration: const Duration(seconds: 4),
      borderRadius: 8,
      dismissDirection: DismissDirection.horizontal,
    ).show();
  }

  static Future<dynamic> showDialog(Widget content, {bool isDismissible = true}) {
    return Get.dialog(
      AlertDialog(
        content: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: content,
        ),
        contentPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      barrierDismissible: isDismissible,
    );
  }

  static Future<dynamic> showBottomSheet(
    Widget child, {
    double borderRadius = 20,
    bool isDismissible = true,
  }) {
    return Get.bottomSheet(
      SafeArea(
        child: RoundedTopContainer(
          showTopBar: isDismissible,
          borderRadius: borderRadius,
          child: child,
        ),
      ),
      isScrollControlled: true,
      ignoreSafeArea: false,
      isDismissible: isDismissible,
      enterBottomSheetDuration: const Duration(milliseconds: 300),
      exitBottomSheetDuration: const Duration(milliseconds: 300),
    );
  }

  static Future<dynamic> showConfirmationDialog({
    bool isDismissible = true,
    required String message,
    required String confirmText,
    String? cancelText,
    required void Function() onConfirm,
    required void Function() onCancel,
  }) {
    return showDialog(
      ConfirmationDialog(
        isDissmissible: isDismissible,
        message: message,
        confirmText: confirmText,
        cancelText: cancelText,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
      isDismissible: isDismissible,
    );
  }

  static void showUnknownError() {
    showSnackBar(
      message: "Une erreur inattendue s'est produite. Veuillez réessayer plus tard.",
      icon: Ionicons.alert_circle,
    );
  }

  // Auth
  static bool get isLoggedIn => Preferences.getAccessToken().isNotEmpty;

  static UserModel? get user =>
      Preferences.getUser() != null && isLoggedIn ? UserModel.fromJson(Preferences.getUser()!) : null;

  static String get userRole => isLoggedIn && user != null ? user!.role : AppRoles.client;

  static bool get isClient => userRole == AppRoles.client;

  static String getUserFullAddress(UserModel user) {
    String fullAddress = '';
    fullAddress += user.street.isNotEmpty ? '${user.street}, ' : '';
    fullAddress += user.postalCode.isNotEmpty ? '${user.postalCode}, ' : '';
    fullAddress += user.department.isNotEmpty ? '${user.department}, ' : '';
    fullAddress += user.region.isNotEmpty ? '${user.region}, ' : '';
    fullAddress += user.country.isNotEmpty ? user.country : '';
    return fullAddress;
  }

  static Future<void> setUser(ApiResponse response) async {
    await Preferences.setUser(response.data as Map<String, dynamic>);
    AppService.instance.authUser(user);
  }

  static Future<void> loginUser(ApiResponse response) async {
    await Future.wait([
      setAuthTokens(response),
      setUser(response),
      Preferences.setInitialRoute(AppPages.kDashboard),
    ]);
  }

  static Future<void> logoutUser() async {
    await Preferences.erase();
    await Preferences.setInitialRoute(AppPages.kLogin);
    AppService.instance.authUser.value = null;
  }

  static Future<void> setAuthTokens(ApiResponse response) async {
    await Preferences.setAccessToken(response.token!);
  }

  static Future<ApiResponse> updateMeDetails({
    String? email,
    String? firstname,
    String? lastname,
    String? phone,
    String? street,
    String? postalCode,
    String? country,
    String? region,
    String? department,
  }) {
    return AppService.instance.restClient.updateMe(
      email: email ?? user!.email,
      firstname: firstname ?? user!.firstname,
      lastname: lastname ?? user!.lastname,
      phone: phone ?? user!.phone,
      street: street ?? user!.street,
      postalCode: postalCode ?? user!.postalCode,
      country: country ?? user!.country,
      region: region ?? user!.region,
      department: department ?? user!.department,
    );
  }
}

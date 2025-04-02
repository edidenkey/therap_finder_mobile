import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/pages.dart';
import 'package:theraplib_mobile/helpers/index.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return AppUtils.isLoggedIn
        ? null
        : const RouteSettings(name: AppPages.kLogin);
  }
}

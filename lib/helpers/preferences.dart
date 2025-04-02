import 'package:get_storage/get_storage.dart';

import 'package:theraplib_mobile/constants/index.dart';

abstract class Preferences {
  static const String kInitialRoute = 'initialRoute';
  static const String kLocationStatus = 'locationStatus';
  static const String kUser = 'user';
  static const String kAccessToken = 'accessToken';

  // Delete all prefs
  static Future<void> erase() async => await GetStorage().erase();

  // Initial route
  static String getInitialRoute() => GetStorage().read(kInitialRoute) ?? AppPages.kDashboard;

  static Future<void> setInitialRoute(String value) async => await GetStorage().write(kInitialRoute, value);

  static Future<void> unsetInitialRoute() async => await GetStorage().remove(kInitialRoute);

  // Location status
  static String getLocationStatus() => GetStorage().read(kLocationStatus) ?? '';

  static Future<void> setLocationStatus(String value) async => await GetStorage().write(kLocationStatus, value);

  static Future<void> unsetLocationStatus() async => await GetStorage().remove(kLocationStatus);

  // User
  static Map<String, dynamic>? getUser() => GetStorage().read(kUser);

  static Future<void> setUser(Map<String, dynamic> value) async => await GetStorage().write(kUser, value);

  static Future<void> unsetUser() async => await GetStorage().remove(kUser);

  // Access token
  static String getAccessToken() => GetStorage().read(kAccessToken) ?? '';

  static Future<void> setAccessToken(String value) async => await GetStorage().write(kAccessToken, value);

  static Future<void> unsetAccessToken() async => await GetStorage().remove(kAccessToken);
}

abstract class AppConfigs {
  // App
  static const String appName = 'Theraplib';

  // Api
  static const String apiHost = 'http://192.168.1.81:8000';
  static const String apiBaseUrl = '$apiHost/api/theraplib/v1';

  // Dio
  static const int dioConnectTimeout = 10000;
  static const int dioSendTimeout = 30000;
  static const int dioReceiveTimeout = 60000;
}

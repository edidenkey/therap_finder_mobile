import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/exceptions/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';

class AppService extends GetxService {
  static AppService get instance => Get.find();

  final Rx<UserModel?> authUser = Rxn<UserModel>(AppUtils.user);
  final RxList<CartItem> cartItems = <CartItem>[].obs;
  final Dio dio = Dio(BaseOptions(
    baseUrl: AppConfigs.apiBaseUrl,
    connectTimeout: AppConfigs.dioConnectTimeout,
    sendTimeout: AppConfigs.dioSendTimeout,
    receiveTimeout: AppConfigs.dioReceiveTimeout,
  ));
  late final RestClient restClient;
  late final StreamSubscription _connectivitySubscription;
  final Connectivity _connectivity = Connectivity();
  final InternetConnectionChecker _internetConnectionChecker = InternetConnectionChecker();
  final RxBool _isConnected = false.obs;
  bool _wasOffline = false;
  bool _shouldHandleDioErrors = true;

  Future<AppService> init() async {
    debounce(_isConnected, (_) => _showConnectionState(), time: const Duration(seconds: 2));
    restClient = RestClient(dio);
    _initializeInterceptors();
    await _initConnectivity();
    await refreshUser();
    return this;
  }

  @override
  void onClose() {
    dio.close();
    _connectivitySubscription.cancel();
    super.onClose();
  }

  // Internet connection
  Future<void> _initConnectivity() async {
    final ConnectivityResult connectivityResult = await _connectivity.checkConnectivity();
    _updateConnectionState(connectivityResult);
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionState);
  }

  void _updateConnectionState(ConnectivityResult connectivityResult) {
    if (connectivityResult != ConnectivityResult.none) {
      _isConnected.value = true;
    } else {
      _isConnected.value = false;
    }
  }

  void _showConnectionState() {
    if (_isConnected.value && _wasOffline) {
      _wasOffline = false;
      AppUtils.showSnackBar(
        message: 'Votre connexion Internet a été restaurée.',
        icon: Icons.wifi_rounded,
      );
    } else if (!_isConnected.value) {
      _wasOffline = true;
      AppUtils.showSnackBar(
        message: 'Vous êtes hors ligne.',
        icon: Icons.wifi_off_rounded,
      );
    }
  }

  // Dio interceptors
  void _initializeInterceptors() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        return handler.next(_handleSetAccessToken(options));
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        return handler.next(response);
      },
      onError: (DioError error, ErrorInterceptorHandler handler) async {
        if (NetworkExceptions.isSocketException(error) || NetworkExceptions.isTimeoutException(error)) {
          return await _handleTimeoutException(error, handler);
        }
        if (NetworkExceptions.isServerException(error)) {
          return _handleUnexpectedException(error, handler);
        }
        if (NetworkExceptions.isTokenException(error)) {
          return await _handleTokenException(error, handler);
        }
        return handler.next(error);
      },
    ));
  }

  Future<void> refreshUser() async {
    if (AppUtils.user != null) {
      try {
        _shouldHandleDioErrors = false;
        ApiResponse response = await restClient.getMe();
        await AppUtils.setUser(response);
      } catch (_) {
      } finally {
        _shouldHandleDioErrors = true;
      }
    }
  }

  RequestOptions _handleSetAccessToken(RequestOptions options) {
    final String accessToken = Preferences.getAccessToken();
    if (accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    return options;
  }

  Future<void> _handleTimeoutException(DioError error, ErrorInterceptorHandler handler) async {
    final bool hasConnection = await _internetConnectionChecker.hasConnection;
    if (hasConnection) {
      return _handleUnexpectedException(error, handler);
    } else {
      if (_shouldHandleDioErrors) {
        AppUtils.showSnackBar(
          message: "Impossible d'actualiser les données. Veuillez vérifier votre connexion Internet.",
          icon: Ionicons.alert_circle,
        );
      }
      return handler.reject(error);
    }
  }

  void _handleUnexpectedException(DioError error, ErrorInterceptorHandler handler) {
    if (_shouldHandleDioErrors) {
      AppUtils.showSnackBar(
        message: 'Nous rencontrons des problèmes techniques, veuillez réessayer plus tard.',
        icon: Ionicons.alert_circle,
      );
    }
    return handler.reject(error);
  }

  Future<void> _handleTokenException(DioError error, ErrorInterceptorHandler handler) async {
    if (_shouldHandleDioErrors) {
      handler.reject(DioError(
        requestOptions: error.requestOptions,
        error: 'La session a expiré.',
      ));
      Get.offAllNamed(AppPages.kLogin);
      return AppUtils.showSnackBar(
        message: 'La session a expiré.',
        icon: Ionicons.alert_circle,
      );
    }
    return handler.reject(error);
  }
}

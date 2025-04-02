import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';
import 'app_service.dart';

class LocationService extends GetxService with WidgetsBindingObserver {
  static LocationService get instance => Get.find();

  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  late LocationPermission _permissionStatus;
  bool _isLocationPermissionBottomSheetOpened = false;
  int _openSettings = 0;

  Future<LocationService> init() async {
    WidgetsBinding.instance.addObserver(this);
    await _initLocationStatus();
    return this;
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    await _handleResumeFromSettings(state);
  }

  Future<void> _initLocationStatus() async {
    _permissionStatus = await _geolocatorPlatform.checkPermission();
    if (_permissionStatus != LocationPermission.denied && Preferences.getLocationStatus().isNotEmpty) {
      await Preferences.unsetLocationStatus();
    }
  }

  Future<void> _handleResumeFromSettings(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed && _openSettings != 0) {
      await Future.delayed(const Duration(milliseconds: 300));

      // Back from Device Location Settings after requesting to enable location service
      if (_openSettings == 1) {
        _openSettings = 0;
        final bool serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
        if (serviceEnabled) {
          await handlePermission();
        } else {
          _showLocationServiceDisabledError();
        }
        return;
      }

      // Back from App Settings after requesting to grant location permission
      if (_openSettings == 2) {
        _openSettings = 0;
        _permissionStatus = await _geolocatorPlatform.checkPermission();
        if (_permissionStatus == LocationPermission.denied) {
          _showLocationServiceDisabledError();
        } else {
          if (Preferences.getLocationStatus().isNotEmpty) {
            await Preferences.unsetLocationStatus();
          }
          if (_isLocationPermissionBottomSheetOpened) Get.until((_) => !Get.isBottomSheetOpen!);
        }
        return;
      }
    }
  }

  Future<bool> _checkService() async {
    final bool serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _openSettings = 0;
      await _showEnableLocationServiceInLocationSettingsDialog();
      if (_openSettings == 1) {
        await _geolocatorPlatform.openLocationSettings();
      } else {
        _showLocationServiceDisabledError();
      }
    }
    return serviceEnabled;
  }

  Future<bool> handlePermission() async {
    if (!(await _checkService())) return false;

    _permissionStatus = await _geolocatorPlatform.checkPermission();
    if (_permissionStatus == LocationPermission.denied && !_isLocationPermissionBottomSheetOpened) {
      _isLocationPermissionBottomSheetOpened = true;
      await _showRequestLocationPermissionBottomSheet();
      _isLocationPermissionBottomSheetOpened = false;
    }

    return _permissionStatus != LocationPermission.denied && _permissionStatus != LocationPermission.deniedForever;
  }

  Future<void> _requestPermission() async {
    if (!(await _checkService())) return;

    _permissionStatus = await _geolocatorPlatform.requestPermission();
    if (_permissionStatus == LocationPermission.denied || _permissionStatus == LocationPermission.deniedForever) {
      if (Preferences.getLocationStatus() == LocationPermission.deniedForever.toString()) {
        _openSettings = 0;
        await _showGrantLocationPermissionInAppSettingsDialog();
        if (_openSettings == 2) {
          await _geolocatorPlatform.openAppSettings();
          return;
        }
      }

      _showLocationServiceDisabledError();
      await Preferences.setLocationStatus(_permissionStatus.toString());
      return;
    }

    if (Preferences.getLocationStatus().isNotEmpty) {
      await Preferences.unsetLocationStatus();
    }
    if (_isLocationPermissionBottomSheetOpened) Get.until((_) => !Get.isBottomSheetOpen!);
  }

  LocationSettings getLocationSettings() {
    return const LocationSettings(
      accuracy: LocationAccuracy.high,
      timeLimit: Duration(seconds: 30),
      distanceFilter: 0,
    );
  }

  Future<Position?> getCurrentLocation() async {
    Position? currentLocation;
    if (await handlePermission()) {
      try {
        currentLocation = await _geolocatorPlatform.getCurrentPosition(locationSettings: getLocationSettings());
      } catch (_) {
        AppUtils.showSnackBar(
          message: 'Impossible de récupérer la position géographique de votre appareil.',
          icon: Ionicons.alert_circle,
        );
      }
    }
    return currentLocation;
  }

  Future<void> updateUserLocation(Position location) async {
    try {
      ApiResponse response = await AppService.instance.restClient.updateMeLocation(
        latitude: location.latitude,
        longitude: location.longitude,
      );
      await AppUtils.setUser(response);
    } on DioError catch (_) {}
  }

  void _showLocationServiceDisabledError() {
    AppUtils.showSnackBar(
      message: 'La localisation de votre appareil est requise.',
      icon: Icons.location_off_rounded,
    );
  }

  Future<void> _showRequestLocationPermissionBottomSheet() {
    return AppUtils.showBottomSheet(
      LocationPermissionBottomSheet(
        description: 'Découvrez les thérapeutes près de vous en temps réel, où que vous soyez.',
        onRequestPermission: _requestPermission,
      ),
    );
  }

  Future<void> _showEnableLocationServiceInLocationSettingsDialog() {
    return AppUtils.showDialog(
      LocationDialog(
        isDismissible: false,
        firstDescription: 'Les services de localisation sont désactivés sur votre appareil.',
        secondDescription: 'Activez les services de localisation dans les paramètres '
            'de localisation de votre appareil.',
        onCancel: () => Get.until((_) => !Get.isDialogOpen!),
        onConfirm: () {
          _openSettings = 1;
          Get.until((_) => !Get.isDialogOpen!);
        },
      ),
      isDismissible: false,
    );
  }

  Future<void> _showGrantLocationPermissionInAppSettingsDialog() {
    return AppUtils.showDialog(
      LocationDialog(
        isDismissible: false,
        firstDescription: "L'accès de ${AppConfigs.appName} à la position de votre "
            'appareil a été désactivé de façon permanente.',
        secondDescription: 'Autorisez ${AppConfigs.appName} à accéder à la '
            "position de votre appareil en activant la localisation dans les paramètres d'autorisations de votre appareil.",
        onCancel: () => Get.until((_) => !Get.isDialogOpen!),
        onConfirm: () {
          _openSettings = 2;
          Get.until((_) => !Get.isDialogOpen!);
        },
      ),
      isDismissible: false,
    );
  }
}

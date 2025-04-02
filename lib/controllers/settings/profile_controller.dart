import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart' hide Response, FormData, MultipartFile;
import 'package:http_parser/http_parser.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _appService = AppService.instance;
  final ImagePicker _picker = ImagePicker();
  final RxBool isLoading = false.obs;

  // Name
  final RxBool isNameFormValid = false.obs;
  String _firstname = '';
  String _lastname = '';

  // Email
  final RxBool isEmailFormValid = false.obs;
  String _email = '';
  bool _isEmailTaken = false;

  // Address
  final RxBool isAddressFormValid = false.obs;
  String _street = '';
  String _postalCode = '';
  String _departement = '';
  String _region = '';
  String _country = '';

  /*
   * ============================= PHOTO SECTION
   */
  void takePhoto() async {
    Get.until((_) => !Get.isBottomSheetOpen!);
    await _pickImage(ImageSource.camera);
  }

  void pickPhoto() async {
    Get.until((_) => !Get.isBottomSheetOpen!);
    await _pickImage(ImageSource.gallery);
  }

  Future<void> getLostPickerData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty || response.file == null) return;
    await _handlePickedImage(response.file!);
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
      preferredCameraDevice: CameraDevice.front,
    );
    if (pickedFile == null) return;
    await _handlePickedImage(pickedFile);
  }

  Future<void> _handlePickedImage(XFile pickedFile) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: pickedFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Modifier la photo',
          statusBarColor: AppThemes.lightPalette,
          toolbarColor: AppThemes.lightPalette,
          toolbarWidgetColor: Colors.white,
          activeControlsWidgetColor: AppThemes.lightPalette,
        ),
      ],
    );
    if (croppedFile == null) return;
    await _handleUploadUserPhoto(croppedFile.path);
  }

  Future<File> _compressImage(String path, {int quality = 50}) async {
    final dirPath = (await getTemporaryDirectory()).path;
    final filename = 'photo_${DateTime.now().millisecondsSinceEpoch}${p.extension(path)}';
    final newPath = p.join(dirPath, filename);

    final resultFile = await FlutterImageCompress.compressAndGetFile(
      path,
      newPath,
      quality: quality,
    );

    return resultFile!;
  }

  // Upload
  Future<void> _handleUploadUserPhoto(String croppedFilePath) =>
      AppUtils.showLoadingOverlay(() => _uploadUserPhoto(croppedFilePath));

  Future<void> _uploadUserPhoto(String croppedFilePath) async {
    try {
      isLoading.value = true;
      final file = await _compressImage(croppedFilePath);
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          file.path,
          filename: p.basename(file.path),
          contentType: MediaType.parse(lookupMimeType(p.basename(file.path))!),
        ),
      });
      await _appService.dio.post('/users/me/profile-image', data: formData);
      await _appService.refreshUser();
      AppUtils.showSnackBar(
        message: 'Votre photo de profil a été mise à jour.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode == 422) {
        if (e.response!.data['message'] == 'Le image ne devrait pas être supérieur 5120 kilobytes.') {
          AppUtils.showSnackBar(
            message: 'La taille de la photo doit être inférieure ou égale à 5 Mo.',
            icon: Ionicons.alert_circle,
          );
        } else if (e.response!.data['message'] == 'The image must be a file of type: jpg, png, jpeg.') {
          AppUtils.showSnackBar(
            message: 'La photo doit être de type : jpg, png ou jpeg.',
            icon: Ionicons.alert_circle,
          );
        } else {
          AppUtils.showUnknownError();
        }
      }
    } finally {
      isLoading.value = false;
    }
  }

  // Delete
  void handleDeleteUserPhoto() async {
    Get.until((_) => !Get.isDialogOpen!);
    await AppUtils.showLoadingOverlay(_deleteUserPhoto);
  }

  Future<void> _deleteUserPhoto() async {
    try {
      isLoading.value = true;
      await _appService.restClient.removeMeProfilePhoto();
      await _appService.refreshUser();
      AppUtils.showSnackBar(
        message: 'Votre photo de profil a été supprimée.',
        icon: Ionicons.information_circle,
      );
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode == 400) {
        AppUtils.showUnknownError();
      }
    } finally {
      isLoading.value = false;
    }
  }

  /*
   * ============================= NAME SECTION
   */
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
    checkNameForm(formKey);
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
    checkNameForm(formKey);
  }

  void checkNameForm(GlobalKey<FormState> formKey) {
    final isFirstNameChanged = !AppUtils.isSameString(_firstname, AppUtils.user!.firstname);
    final isLastNameChanged = !AppUtils.isSameString(_lastname, AppUtils.user!.lastname);
    isNameFormValid.value =
        formKey.currentState != null && formKey.currentState!.validate() && (isFirstNameChanged || isLastNameChanged);
  }

  void handleUpdateUserName() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await AppUtils.showLoadingOverlay(_updateUserName);
  }

  Future<void> _updateUserName() async {
    if (!isNameFormValid.value) return;
    try {
      isLoading.value = true;
      ApiResponse response = await AppUtils.updateMeDetails(
        firstname: _firstname,
        lastname: _lastname,
      );
      await AppUtils.setUser(response);
      AppUtils.showSnackBar(
        message: 'Votre nom a été mis à jour.',
        icon: Ionicons.information_circle,
      );
      Get.until((_) => !Get.isBottomSheetOpen!);
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode == 400) {
        AppUtils.showUnknownError();
      }
    } finally {
      isLoading.value = false;
    }
  }

  /*
   * ============================= EMAIL SECTION
   */
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
      checkEmailForm(formKey);
    }
  }

  void checkEmailForm(GlobalKey<FormState> formKey) {
    final isEmailChanged = !AppUtils.isSameString(_email, AppUtils.user!.email);
    isEmailFormValid.value = formKey.currentState != null && formKey.currentState!.validate() && isEmailChanged;
  }

  void handleUpdateUserEmail(GlobalKey<FormState> formKey) async {
    FocusManager.instance.primaryFocus?.unfocus();
    await AppUtils.showLoadingOverlay(() => _updateUserEmail(formKey));
  }

  Future<void> _updateUserEmail(GlobalKey<FormState> formKey) async {
    if (!isEmailFormValid.value) return;
    try {
      isLoading.value = true;
      ApiResponse response = await AppUtils.updateMeDetails(email: _email);
      await AppUtils.setUser(response);
      AppUtils.showSnackBar(
        message: 'Votre adresse email a été mise à jour.',
        icon: Ionicons.information_circle,
      );
      Get.until((_) => !Get.isBottomSheetOpen!);
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode == 422) {
        // Email is taken
        if (e.response!.data['message'] == 'The email has already been taken.') {
          _isEmailTaken = true;
          checkEmailForm(formKey);
        } else {
          AppUtils.showUnknownError();
        }
      }
    } finally {
      isLoading.value = false;
    }
  }

  /*
   * ============================= Address SECTION
   */
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
    checkAddressForm(formKey);
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
    checkAddressForm(formKey);
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
    checkAddressForm(formKey);
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
    checkAddressForm(formKey);
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
    checkAddressForm(formKey);
  }

  void checkAddressForm(GlobalKey<FormState> formKey) {
    final isStreetChanged = !AppUtils.isSameString(_firstname, AppUtils.user!.street);
    final isPostalCodeChanged = !AppUtils.isSameString(_lastname, AppUtils.user!.postalCode);
    final isDepartementChanged = !AppUtils.isSameString(_lastname, AppUtils.user!.department);
    final isRegionChanged = !AppUtils.isSameString(_lastname, AppUtils.user!.region);
    final isCountryChanged = !AppUtils.isSameString(_lastname, AppUtils.user!.country);
    isAddressFormValid.value = formKey.currentState != null &&
        formKey.currentState!.validate() &&
        (isStreetChanged || isPostalCodeChanged || isDepartementChanged || isRegionChanged || isCountryChanged);
  }

  void handleUpdateUserAddress() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await AppUtils.showLoadingOverlay(_updateUserAddress);
  }

  Future<void> _updateUserAddress() async {
    if (!isAddressFormValid.value) return;
    try {
      isLoading.value = true;
      ApiResponse response = await AppUtils.updateMeDetails(
        street: _street,
        postalCode: _postalCode,
        department: _departement,
        region: _region,
        country: _country,
      );
      await AppUtils.setUser(response);
      AppUtils.showSnackBar(
        message: 'Votre adresse a été mise à jour.',
        icon: Ionicons.information_circle,
      );
      Get.until((_) => !Get.isBottomSheetOpen!);
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode == 400) {
        AppUtils.showUnknownError();
      }
    } finally {
      isLoading.value = false;
    }
  }

  /*
   * ============================= Position SECTION
   */
  void handleUpdateUserPosition() async {
    Get.until((_) => !Get.isDialogOpen!);
    await AppUtils.showLoadingOverlay(_updateUserPosition);
  }

  Future<void> _updateUserPosition() async {
    try {
      isLoading.value = true;
      final currentPosition = await LocationService.instance.getCurrentLocation();
      if (currentPosition != null) {
        ApiResponse response = await _appService.restClient.updateMeLocation(
          latitude: currentPosition.latitude,
          longitude: currentPosition.longitude,
        );
        await AppUtils.setUser(response);
        AppUtils.showSnackBar(
          message: 'Votre position a été mise à jour.',
          icon: Ionicons.information_circle,
        );
      }
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode! < 500) {
        AppUtils.showUnknownError();
      }
    } finally {
      isLoading.value = false;
    }
  }

  Future<bool> onWillPop() async => !isLoading.value;
}

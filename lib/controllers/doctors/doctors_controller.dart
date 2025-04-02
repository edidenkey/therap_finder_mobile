import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class DoctorsController extends GetxController {
  static DoctorsController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxList<UserObjectModel> doctors = <UserObjectModel>[].obs;
  final RxList<UserObjectModel> searchedDoctors = <UserObjectModel>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxBool shouldUseCurrentLocation = false.obs;
  final RxString searchQuery = ''.obs;
  Position? _currentLocation;

  final String? _categoryId = Get.parameters['categoryId'];

  @override
  void onInit() {
    ever(searchQuery, (_) => _searchDoctors());
    super.onInit();
  }

  void updateSearchQuery(String value) {
    if (doctors.isEmpty) return;
    searchQuery.value = value.trim();
  }

  void fetchData() {
    isLoading.value = true;
    getDetails();
  }

  Future<bool> toggleLocation() async {
    shouldUseCurrentLocation.value = !shouldUseCurrentLocation.value;
    isLoading.value = true;
    if (shouldUseCurrentLocation.value) {
      _currentLocation = await LocationService.instance.getCurrentLocation();
      if (_currentLocation != null) {
        getDetails();
        return true;
      } else {
        shouldUseCurrentLocation.value = false;
        isLoading.value = false;
        return false;
      }
    } else {
      fetchData();
      return true;
    }
  }

  Future<void> getDetails() async {
    try {
      ApiResponse response;
      if (shouldUseCurrentLocation.value) {
        response = await _restClient.getNearestTherapeutes(
          categoryId: int.tryParse(_categoryId ?? ''),
          longitude: _currentLocation!.longitude,
          latitude: _currentLocation!.latitude,
        );
      } else {
        response = await _restClient.getAllTherapeutes(
          categoryId: int.tryParse(_categoryId ?? ''),
        );
      }
      final doctorsJsonList = (response.data as List).cast<Map<String, dynamic>>();
      doctors.value = doctorsJsonList.map(UserObjectModel.fromJson).toList();
      hasError.value = false;
    } catch (_) {
      doctors.clear();
      hasError.value = true;
    } finally {
      searchedDoctors.value = doctors.toList();
      isLoading.value = false;
    }
  }

  void _searchDoctors() {
    if (searchQuery.isNotEmpty) {
      searchedDoctors.value = doctors.where((doctor) {
        final String query = AppUtils.removeDiacritics(searchQuery.value);
        final String doctorName = AppUtils.removeDiacritics('${doctor.user!.lastname} ${doctor.user!.firstname}');
        String categoryName = '';
        if (_categoryId == null && doctor.categoryObjects != null && doctor.categoryObjects!.isNotEmpty) {
          categoryName = AppUtils.removeDiacritics(doctor.categoryObjects![0].category.name);
        }
        return doctorName.contains(RegExp(query, caseSensitive: false)) ||
            categoryName.contains(RegExp(query, caseSensitive: false));
      }).toList();
    } else {
      searchedDoctors.value = doctors.toList();
    }
  }

  void showDoctorDetail(UserObjectModel doctor) => Get.toNamed(AppPages.kDoctorDetails, arguments: {'doctor': doctor});
}

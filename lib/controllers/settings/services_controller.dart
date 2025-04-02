import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class ServicesController extends GetxController {
  static ServicesController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxList<ServiceModel> services = <ServiceModel>[].obs;
  final RxList<ServiceModel> searchedServices = <ServiceModel>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxString searchQuery = ''.obs;

  @override
  void onInit() {
    ever(searchQuery, (_) => _searchServices());
    super.onInit();
  }

  void updateSearchQuery(String value) {
    if (services.isEmpty) return;
    searchQuery.value = value.trim();
  }

  void fetchData() async {
    isLoading.value = true;
    await getDetails();
  }

  Future<void> getDetails() async {
    try {
      ApiResponse response = await _restClient.getServicesByTherapeuteId(therapeuteId: AppUtils.user!.userObjectId);
      final servicesJson = (response.data as List).cast<Map<String, dynamic>>();
      services.value = servicesJson.map(ServiceModel.fromJson).toList();
      hasError.value = false;
    } on DioError catch (_) {
      services.clear();
      hasError.value = true;
    } finally {
      searchedServices.value = services.toList();
      isLoading.value = false;
    }
  }

  void _searchServices() {
    if (searchQuery.isNotEmpty) {
      searchedServices.value = services.where((service) {
        final String query = AppUtils.removeDiacritics(searchQuery.value);
        final String serviceName = AppUtils.removeDiacritics(service.name);
        final String serviceDescription = AppUtils.removeDiacritics(service.description);
        return serviceName.contains(RegExp(query, caseSensitive: false)) ||
            serviceDescription.contains(RegExp(query, caseSensitive: false));
      }).toList();
    } else {
      searchedServices.value = services.toList();
    }
  }
}

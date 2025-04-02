import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';

class ShopController extends GetxController {
  static ShopController get instance => Get.find();

  final _restClient = AppService.instance.restClient;
  final RxList<ProductModel> allProducts = <ProductModel>[].obs;
  final RxList<ProductModel> searchedProducts = <ProductModel>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxString searchQuery = ''.obs;

  @override
  void onInit() {
    ever(searchQuery, (_) => _searchProducts());
    super.onInit();
  }

  void updateSearchQuery(String value) {
    if (allProducts.isEmpty) return;
    searchQuery.value = value.trim();
  }

  void fetchData() {
    isLoading.value = true;
    getProducts();
  }

  Future<void> getProducts() async {
    try {
      ApiResponse response;
      if (AppUtils.userRole == AppRoles.client) {
        response = await _restClient.getAllProducts();
      } else {
        response = await _restClient.getProductsByTherapeuteId(therapeuteId: AppUtils.user!.userObjectId);
      }
      final productsJsonList = (response.data as List).cast<Map<String, dynamic>>();
      allProducts.value = productsJsonList.map(ProductModel.fromJson).toList();
      hasError.value = false;
    } catch (_) {
      allProducts.clear();
      hasError.value = true;
    } finally {
      searchedProducts.value = allProducts.toList();
      isLoading.value = false;
    }
  }

  void _searchProducts() {
    if (searchQuery.isNotEmpty) {
      searchedProducts.value = allProducts.where((product) {
        final String query = AppUtils.removeDiacritics(searchQuery.value);
        final String productName = AppUtils.removeDiacritics(product.name);
        return productName.contains(RegExp(query, caseSensitive: false));
      }).toList();
    } else {
      searchedProducts.value = allProducts.toList();
    }
  }

  void showProductDetail(ProductModel product) =>
      Get.toNamed(AppPages.kProductDetails, arguments: {'product': product});
}

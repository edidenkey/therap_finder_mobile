import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _appService = AppService.instance;
  final RxBool _isSubmitting = false.obs;

  Future<void> _purchase() async {
    if (_appService.cartItems.isEmpty) return;
    try {
      _isSubmitting.value = true;
      final orders = _appService.cartItems
          .map((item) => {
                'product_id': item.product.id,
                'quantity': item.quantity,
              })
          .toList();
      await _appService.restClient.createOder(orders: orders);
      _appService.cartItems.clear();
      _isSubmitting.value = false;
      AppUtils.showSnackBar(
        message: 'Achat effectué avec succès',
        icon: Ionicons.information_circle,
      );
      Get.offAllNamed(AppPages.kDashboard);
    } on DioError catch (e) {
      // Unexpected error
      if (e.response != null && e.response!.statusCode == 400) {
        AppUtils.showUnknownError();
      }
      _isSubmitting.value = false;
    }
  }

  Future<bool> _onWillPop() async => !_isSubmitting.value;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('Panier'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _isSubmitting.value ? null : Get.back(closeOverlays: true),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => AnimatedCrossFade(
                    crossFadeState:
                        _appService.cartItems.isEmpty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 300),
                    firstChild: const _EmptyCart(),
                    secondChild: _appService.cartItems.isEmpty
                        ? const SizedBox.shrink()
                        : Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  padding: const EdgeInsets.all(20),
                                  itemCount: _appService.cartItems.length,
                                  itemBuilder: (context, index) => Obx(
                                    () => Dismissible(
                                      key: Key(_appService.cartItems[index].product.id.toString()),
                                      direction:
                                          _isSubmitting.value ? DismissDirection.none : DismissDirection.endToStart,
                                      background: Container(
                                        clipBehavior: Clip.hardEdge,
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                          color: Colors.red.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          children: const [
                                            Spacer(),
                                            Icon(Icons.delete, color: Colors.redAccent),
                                          ],
                                        ),
                                      ),
                                      onDismissed: (direction) => _appService.cartItems.removeAt(index),
                                      child: CartCard(
                                        product: _appService.cartItems[index].product,
                                        quantity: _appService.cartItems[index].quantity,
                                      ),
                                    ),
                                  ),
                                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, -5),
                                      blurRadius: 10,
                                      color: Colors.black12,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total',
                                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                                color: Colors.black54,
                                              ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          '${AppUtils.getCartTotalPrice()} €',
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Obx(
                                        () => AppButton(
                                          onPressed: _purchase,
                                          disabled: _isSubmitting.value,
                                          loading: _isSubmitting.value,
                                          width: context.width / 2,
                                          padding: 12,
                                          textSize: 18,
                                          text: 'Payer',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: SvgPicture.asset('assets/images/empty_cart.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Votre panier est vide.',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

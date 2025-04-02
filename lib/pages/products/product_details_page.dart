import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _appService = AppService.instance;
  final RxInt _quantity = 1.obs;

  final ProductModel product = Get.arguments['product'];

  bool get _isInStock => product.stock > 0;

  void _setQuantity(int value) => _quantity.value = value;

  void _addToCart() {
    final CartItem? cartItem = _appService.cartItems.firstWhereOrNull((item) => item.product.id == product.id);
    if (cartItem != null) _appService.cartItems.remove(cartItem);
    _appService.cartItems.add(CartItem(product: product, quantity: _quantity.value));
    _quantity.value = 1;
    AppUtils.showSnackBar(
      message: 'Produit ajouté au panier avec succès.',
      icon: Ionicons.information_circle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(closeOverlays: true),
        ),
        actions: AppUtils.isClient
            ? [
                Obx(
                  () => IconButton(
                    onPressed: () => Get.toNamed(AppPages.kCart),
                    icon: Badge(
                      showBadge: AppService.instance.cartItems.isNotEmpty,
                      badgeColor: Colors.redAccent,
                      badgeContent: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          _appService.cartItems.length.toString(),
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      child: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                    ),
                    tooltip: 'Panier',
                  ),
                ),
                const SizedBox(width: 10)
              ]
            : null,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ProductTitleWithImage(product: product),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          color: AppThemes.lightPalette,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(context.isTablet ? 40 : 30),
                              topRight: Radius.circular(context.isTablet ? 40 : 30),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Chip(
                                  clipBehavior: Clip.hardEdge,
                                  backgroundColor: _isInStock ? Colors.green.shade50 : Colors.red.shade50,
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  label: Text(
                                    _isInStock ? 'Disponible en stock (${product.stock})' : 'En rupture de stock (0)',
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                          color: _isInStock ? Colors.green : Colors.red,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                        ),
                                  ),
                                ),
                              ),
                              DescriptionBox(text: product.description, paddingBottom: 12),
                              Visibility(
                                visible: AppUtils.isClient,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(
                                      () => CartCounter(
                                        quantity: _quantity.value,
                                        inStock: product.stock,
                                        setQuantity: _setQuantity,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: IconButton(
                                        onPressed: () {},
                                        tooltip: 'Ajouter aux favoris',
                                        icon: const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: AppUtils.isClient,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: AppButton(
                  disabled: product.stock == 0,
                  onPressed: _addToCart,
                  width: context.width,
                  text: 'Ajouter au panier',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductTitleWithImage extends StatelessWidget {
  const _ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.lightPalette,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Prix\n',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: '${product.price} €',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Hero(
                  tag: product.id.toString(),
                  child: Avatar(
                    size: 150,
                    imageUrl: AppUtils.getProductFrontImageUrl(product),
                    borderRadius: 16,
                    placeholderPadding: 60,
                    errorPadding: 30,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

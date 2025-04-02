import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/services/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    Key? key,
    required this.scrollController,
    required this.navigate,
    required this.canPop,
  }) : super(key: key);

  final ScrollController scrollController;
  final void Function(int) navigate;
  final void Function(bool) canPop;

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with AutomaticKeepAliveClientMixin<ShopPage> {
  final _controller = ShopController.instance;
  final _searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller.fetchData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _resetSearch() {
    FocusManager.instance.primaryFocus?.unfocus();
    _controller.searchQuery.value = '';
    _searchController.clear();
  }

  Future<void> _onRefresh() async {
    await _controller.getProducts();
    _resetSearch();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppUtils.isClient ? 'Boutique' : 'Mes produits'),
        elevation: 0,
        scrolledUnderElevation: 0,
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
                          '${AppService.instance.cartItems.length}',
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
        top: false,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SearchInputField(
                controller: _searchController,
                hintText: 'Rechercher un produit',
                onChanged: _controller.updateSearchQuery,
                onPrefixIconPressed: _resetSearch,
              ),
            ),
            const Divider(height: 0),
            Expanded(
              child: Obx(
                () => AnimatedCrossFade(
                  crossFadeState: _controller.isLoading.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 300),
                  firstChild: const Loader(),
                  secondChild: _controller.hasError.value
                      ? UnexpectedErrorState(
                          padding: const EdgeInsets.all(20),
                          scrollController: _controller.hasError.value ? widget.scrollController : null,
                          onPressed: _controller.fetchData,
                        )
                      : _controller.allProducts.isEmpty
                          ? EmptyPageStateBuilder(
                              padding: const EdgeInsets.all(20),
                              scrollController: _controller.allProducts.isEmpty ? widget.scrollController : null,
                              imageAsset: SvgPicture.asset('assets/images/products.svg'),
                              title: 'Aucun produit',
                              description: "Il n'y a pas de produit pour le moment. Veuillez réessayer plus tard.",
                              actionText: 'Actualiser',
                              onPressed: _controller.fetchData,
                            )
                          : AnimatedCrossFade(
                              crossFadeState: _controller.searchedProducts.isEmpty
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                              duration: const Duration(milliseconds: 300),
                              firstChild: SingleChildScrollView(
                                padding: const EdgeInsets.all(20),
                                controller: _controller.searchedProducts.isEmpty ? widget.scrollController : null,
                                child: const EmptySearchState(message: 'Aucun produit trouvé.'),
                              ),
                              secondChild: _ProductList(
                                onRefresh: _onRefresh,
                                scrollController:
                                    _controller.searchedProducts.isNotEmpty ? widget.scrollController : null,
                                products: _controller.searchedProducts,
                                onItemTap: _controller.showProductDetail,
                              ),
                            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
  const _ProductList({
    Key? key,
    required this.onRefresh,
    this.scrollController,
    required this.products,
    required this.onItemTap,
  }) : super(key: key);

  final Future Function() onRefresh;
  final ScrollController? scrollController;
  final List<ProductModel> products;
  final void Function(ProductModel) onItemTap;

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? const SizedBox.shrink()
        : PullToRefresh(
            onRefresh: onRefresh,
            child: AlignedGridView.count(
              controller: scrollController,
              padding: const EdgeInsets.all(20),
              physics: const AlwaysScrollableScrollPhysics(),
              crossAxisCount: context.isTablet ? 4 : 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              itemCount: products.length,
              itemBuilder: (context, index) => ProductCard(
                product: products[index],
                onTap: () => onItemTap(products[index]),
              ),
            ),
          );
  }
}

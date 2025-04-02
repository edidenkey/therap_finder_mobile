import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final _controller = OrdersController.instance;

  @override
  void initState() {
    super.initState();
    _controller.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Commandes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(closeOverlays: true),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Obx(
          () => AnimatedCrossFade(
            crossFadeState: _controller.isLoading.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
            firstChild: const Loader(),
            secondChild: _controller.hasError.value
                ? UnexpectedErrorState(
                    padding: const EdgeInsets.all(20),
                    onPressed: _controller.fetchData,
                  )
                : _controller.orders.isEmpty
                    ? EmptyPageStateBuilder(
                        padding: const EdgeInsets.all(20),
                        imageAsset: SvgPicture.asset('assets/images/products.svg'),
                        title: 'Aucune commande',
                        description: "Il n'y a pas de commande pour le moment. Veuillez réessayer plus tard.",
                        actionText: 'Actualiser',
                        onPressed: _controller.fetchData,
                      )
                    : _OrderList(
                        onRefresh: _controller.refreshData,
                        orders: _controller.orders,
                      ),
          ),
        ),
      ),
    );
  }
}

class _OrderList extends StatelessWidget {
  const _OrderList({
    Key? key,
    required this.onRefresh,
    required this.orders,
  }) : super(key: key);

  final Future Function() onRefresh;
  final List<OrderModel> orders;

  @override
  Widget build(BuildContext context) {
    return orders.isEmpty
        ? const SizedBox.shrink()
        : PullToRefresh(
            onRefresh: onRefresh,
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: orders.length,
              itemBuilder: (context, index) => CartCard(
                product: orders[index].product,
                quantity: orders[index].quantity,
                date: orders[index].updatedAt,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            ),
          );
  }
}

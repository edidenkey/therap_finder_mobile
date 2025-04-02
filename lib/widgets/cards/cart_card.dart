import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.product,
    required this.quantity,
    this.date,
  }) : super(key: key);

  final ProductModel product;
  final int quantity;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade200, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Avatar(
              imageUrl: AppUtils.getProductFrontImageUrl(product),
              size: 60,
              borderRadius: 8,
              placeholderPadding: 20,
              errorPadding: 12,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            product.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        date != null
                            ? Padding(
                                padding: const EdgeInsets.only(top: 3, left: 15),
                                child: Text(
                                  AppUtils.humanizeDate(date!),
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3,
                                      ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                          text: '${product.price} €',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: AppThemes.lightPalette,
                              ),
                          children: [
                            TextSpan(
                              text: ' x$quantity',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.black54,
                                  ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

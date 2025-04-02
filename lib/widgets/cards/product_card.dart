import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/avatar.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  final ProductModel product;
  final void Function() onTap;

  double _getFrontImageSize(BuildContext context) {
    final colCount = context.isTablet ? 4 : 2;
    final horizontalSpacing = (colCount + 1) * 20;
    return (context.width - horizontalSpacing) / colCount;
  }

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
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.id.toString(),
              child: Avatar(
                size: _getFrontImageSize(context),
                imageUrl: AppUtils.getProductFrontImageUrl(product),
                borderRadius: 16,
                placeholderPadding: 60,
                errorPadding: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black54,
                          overflow: TextOverflow.ellipsis,
                        ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${product.price} €',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

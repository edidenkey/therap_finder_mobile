import 'package:flutter/material.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    Key? key,
    this.quantity = 1,
    required this.inStock,
    required this.setQuantity,
  }) : super(key: key);

  final int quantity;
  final int inStock;
  final void Function(int) setQuantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (quantity > 1) setQuantity(quantity - 1);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            quantity.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black54,
                ),
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              if (quantity < inStock) setQuantity(quantity + 1);
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({
    required IconData icon,
    required void Function() press,
  }) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

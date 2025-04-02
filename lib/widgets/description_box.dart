import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    Key? key,
    required this.text,
    this.paddingTop = 20,
    this.paddingBottom = 20,
  }) : super(key: key);

  final String text;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: context.width,
        decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
        child: Text(
          text.isEmpty ? 'Aucune description' : text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
        ),
      ),
    );
  }
}

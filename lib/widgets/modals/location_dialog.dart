import 'package:flutter/material.dart';

class LocationDialog extends StatelessWidget {
  const LocationDialog({
    Key? key,
    this.isDismissible = true,
    required this.firstDescription,
    required this.secondDescription,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  final bool isDismissible;
  final String firstDescription;
  final String secondDescription;
  final void Function() onConfirm;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDismissible,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstDescription,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              secondDescription,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: onCancel,
                child: const Text(
                  'Non, merci',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
              ),
              TextButton(
                onPressed: onConfirm,
                child: const Text(
                  'OK',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

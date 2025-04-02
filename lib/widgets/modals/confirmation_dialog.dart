import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    Key? key,
    this.isDissmissible = true,
    required this.message,
    required this.confirmText,
    this.cancelText,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  final bool isDissmissible;
  final String message;
  final String confirmText;
  final String? cancelText;
  final void Function() onConfirm;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDissmissible,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: onCancel,
                child: Text(
                  (cancelText ?? 'Annuler').toUpperCase(),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: TextButton(
                  onPressed: onConfirm,
                  child: Text(
                    confirmText.toUpperCase(),
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

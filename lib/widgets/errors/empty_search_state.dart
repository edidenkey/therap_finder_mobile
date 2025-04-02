import 'package:flutter/material.dart';

import 'package:theraplib_mobile/helpers/index.dart';

class EmptySearchState extends StatelessWidget {
  const EmptySearchState({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: AppUtils.minHeight(context)),
      child: Center(
        heightFactor: 1,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black54,
                ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/models/index.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  final ServiceModel service;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(
                Ionicons.medkit_outline,
                size: 18,
                color: AppThemes.lightPalette.shade400,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      service.description.isNotEmpty ? service.description : 'Aucune description',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
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

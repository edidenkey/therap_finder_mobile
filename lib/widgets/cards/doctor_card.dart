import 'package:flutter/material.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';

import '../avatar.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.doctor,
    this.showDistance = false,
    required this.onTap,
  }) : super(key: key);

  final UserObjectModel doctor;
  final bool showDistance;
  final void Function() onTap;

  double? get _distance {
    if (showDistance) return ((doctor.distance ?? 0) * 10).roundToDouble() / 10;
    return null;
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Avatar(
                imageUrl: AppUtils.getUserProfileUrl(doctor.user!),
                size: 60,
                placeholderPadding: 20,
                errorPadding: 12,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '${doctor.user!.lastname} ${doctor.user!.firstname}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          if (_distance != null)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              margin: const EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor.withOpacity(0.1),
                                borderRadius: const BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Text(
                                '${AppUtils.formatNumber(_distance!)} km',
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                textScaleFactor: 1,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text(
                        doctor.categoryObjects == null || doctor.categoryObjects!.isEmpty
                            ? 'Spécialité inconnue'
                            : doctor.categoryObjects![0].category.name,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

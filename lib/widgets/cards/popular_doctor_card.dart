import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';

import '../avatar.dart';

class PopularDoctorCard extends StatelessWidget {
  const PopularDoctorCard({
    Key? key,
    required this.doctor,
    required this.onTap,
  }) : super(key: key);

  final UserObjectModel doctor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      color: AppThemes.lightPalette,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr.',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        doctor.user!.firstname,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Text(
                        doctor.user!.lastname,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        doctor.categoryObjects == null || doctor.categoryObjects!.isEmpty
                            ? 'Spécialité inconnue'
                            : doctor.categoryObjects![0].category.name,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
                Ink(
                  width: 50,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppThemes.lightPalette.shade600,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: const Icon(
                    Ionicons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Hero(
                tag: '${doctor.user!.firstname}${doctor.user!.lastname}',
                child: Avatar(
                  imageUrl: AppUtils.getUserProfileUrl(doctor.user!),
                  size: 90,
                  placeholderPadding: 24,
                  errorPadding: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

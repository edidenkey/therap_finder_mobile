import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';
import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'package:theraplib_mobile/widgets/index.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    Key? key,
    required this.meeting,
    this.onUpdate,
    this.onUpdateStatus,
  }) : super(key: key);

  final MeetingModel meeting;
  final void Function(MeetingModel)? onUpdate;
  final void Function(int, String?, String)? onUpdateStatus;

  UserModel get _user => AppUtils.isClient ? meeting.service!.therapeute!.user! : meeting.client!.user!;

  MeetingStatusItem get _statusItem =>
      AppUtils.meetingStatusItems.firstWhere((status) => status.value == meeting.status);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade200),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Avatar(
                        imageUrl: AppUtils.getUserProfileUrl(_user),
                        size: 50,
                        placeholderPadding: 12,
                        errorPadding: 10,
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
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Text(
                                        AppUtils.formatLongDateTime(meeting.date),
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              fontWeight: FontWeight.w500,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                        textScaleFactor: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                    decoration: BoxDecoration(
                                      color: _statusItem.color!.withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Text(
                                      _statusItem.title,
                                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                            color: _statusItem.color,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      textScaleFactor: 1,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              Text(
                                '${_user.lastname} ${_user.firstname}',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                textScaleFactor: 1,
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  const Icon(Icons.medical_services, size: 14, color: Colors.grey),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        meeting.service?.name ?? 'Service inconnu',
                                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                        textScaleFactor: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (meeting.service != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey.shade100,
                        margin: EdgeInsets.zero,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      meeting.service!.description.isEmpty
                                          ? 'Aucune description.'
                                          : meeting.service!.description,
                                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                            color: Colors.black54,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                      textScaleFactor: 1,
                                      maxLines: 3,
                                    ),
                                    if (onUpdate != null && onUpdateStatus != null)
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          if (_statusItem.value == AppMeetingStatuses.pending)
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: AppUtils.isClient
                                                  ? Row(
                                                      children: [
                                                        if (onUpdate != null)
                                                          Expanded(
                                                            child: AppButton(
                                                              onPressed: () => onUpdate!(meeting),
                                                              text: 'Modifier',
                                                            ),
                                                          ),
                                                        const SizedBox(width: 10),
                                                        Expanded(
                                                          child: AppOutlinedButton(
                                                            onPressed: () => onUpdateStatus!(
                                                              meeting.id,
                                                              AppMeetingStatuses.cancelled,
                                                              'Voulez-vous annuler ce rendez-vous ?',
                                                            ),
                                                            text: 'Annuler',
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : Row(
                                                      children: [
                                                        Expanded(
                                                          child: AppButton(
                                                            onPressed: () => onUpdateStatus!(
                                                              meeting.id,
                                                              AppMeetingStatuses.accepted,
                                                              'Voulez-vous accepter ce rendez-vous ?',
                                                            ),
                                                            text: 'Accepter',
                                                          ),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Expanded(
                                                          child: AppOutlinedButton(
                                                            onPressed: () => onUpdateStatus!(
                                                              meeting.id,
                                                              AppMeetingStatuses.rejected,
                                                              'Voulez-vous refuser ce rendez-vous ?',
                                                            ),
                                                            text: 'Refuser',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                            ),
                                          if (_statusItem.value == AppMeetingStatuses.accepted)
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: AppUtils.isClient
                                                  ? Row(
                                                      children: [
                                                        Expanded(
                                                          child: AppOutlinedButton(
                                                            onPressed: () => onUpdateStatus!(
                                                              meeting.id,
                                                              AppMeetingStatuses.cancelled,
                                                              'Voulez-vous annuler ce rendez-vous ?',
                                                            ),
                                                            text: 'Annuler',
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  : Row(
                                                      children: [
                                                        if (onUpdate != null)
                                                          Expanded(
                                                            child: AppButton(
                                                              onPressed: () => onUpdateStatus!(
                                                                meeting.id,
                                                                AppMeetingStatuses.completed,
                                                                'Voulez-vous terminer ce rendez-vous ?',
                                                              ),
                                                              text: 'Terminer',
                                                            ),
                                                          ),
                                                        const SizedBox(width: 10),
                                                        Expanded(
                                                          child: AppOutlinedButton(
                                                            onPressed: () => onUpdateStatus!(
                                                              meeting.id,
                                                              AppMeetingStatuses.cancelled,
                                                              'Voulez-vous annuler ce rendez-vous ?',
                                                            ),
                                                            text: 'Annuler',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                            ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

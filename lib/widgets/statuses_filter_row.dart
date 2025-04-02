import 'package:flutter/material.dart';

import 'package:theraplib_mobile/models/index.dart';
import 'filter_item.dart';

class StatusesFilterRow extends StatelessWidget {
  const StatusesFilterRow({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.changeIndex,
  }) : super(key: key);

  final List<MeetingStatusItem> items;
  final int selectedIndex;
  final void Function(int) changeIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Wrap(
            spacing: 12,
            children: [
              ...List.generate(
                items.length,
                (index) => FilterItem(
                  label: items[index].title,
                  selected: selectedIndex == index,
                  onSelected: (_) => changeIndex(index),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 0),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:theraplib_mobile/constants/index.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    Key? key,
    required this.label,
    this.selected = false,
    this.hasStar = false,
    required this.onSelected,
  }) : super(key: key);

  final String label;
  final bool selected;
  final bool hasStar;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      checkmarkColor: AppThemes.lightPalette,
      label: Row(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: selected ? AppThemes.lightPalette.shade400 : Colors.black54,
                ),
          ),
          Visibility(
            visible: hasStar,
            child: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Icon(
                Icons.star,
                size: 14,
                color: selected ? AppThemes.lightPalette.shade400 : Colors.black54,
              ),
            ),
          ),
        ],
      ),
      selected: selected,
      onSelected: onSelected,
      backgroundColor: Colors.white,
      selectedColor: AppThemes.lightPalette.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: selected ? Colors.transparent : Colors.grey.shade500,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}

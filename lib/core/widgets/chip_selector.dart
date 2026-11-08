import 'package:bloomi/core/constants/app_colors.dart';
import 'package:bloomi/core/constants/app_spacing.dart';
import 'package:flutter/material.dart';

class BloomiChipItem<T> {
  const BloomiChipItem({
    required this.value,
    required this.label,
    this.icon,
  });

  final T value;
  final String label;
  final IconData? icon;
}

class ChipSelector<T> extends StatelessWidget {
  const ChipSelector.single({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    this.selectedColor = AppColors.mint,
    super.key,
  })  : isMulti = false,
        selectedItems = null,
        onMultiChanged = null;

  const ChipSelector.multi({
    required this.items,
    required this.selectedItems,
    required this.onMultiChanged,
    this.selectedColor = AppColors.mint,
    super.key,
  })  : isMulti = true,
        selectedItem = null,
        onChanged = null;

  final List<BloomiChipItem<T>> items;
  final bool isMulti;
  final T? selectedItem;
  final ValueChanged<T>? onChanged;
  final Set<T>? selectedItems;
  final ValueChanged<Set<T>>? onMultiChanged;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    final cardBg = context.appSurface;
    final primaryTextColor = context.appInk;
    final secondaryTextColor = context.appSlate;

    return Wrap(
      spacing: AppSpacing.sm,
      runSpacing: AppSpacing.sm,
      children: items.map((item) {
        final isSelected = isMulti
            ? (selectedItems?.contains(item.value) ?? false)
            : selectedItem == item.value;

        final selBg = isDark ? selectedColor.withAlpha(80) : selectedColor;
        final unselBg = cardBg;

        return Semantics(
          selected: isSelected,
          button: true,
          label: item.label,
          child: Material(
            color: isSelected ? selBg : unselBg,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
              side: BorderSide(
                color: isSelected ? selectedColor : context.appDivider,
                width: 1.5,
              ),
            ),
            child: InkWell(
              onTap: () {
                if (isMulti) {
                  final newSet = Set<T>.from(selectedItems ?? <T>{});
                  if (isSelected) {
                    newSet.remove(item.value);
                  } else {
                    newSet.add(item.value);
                  }
                  onMultiChanged?.call(newSet);
                } else {
                  onChanged?.call(item.value);
                }
              },
              borderRadius: const BorderRadius.all(Radius.circular(AppSpacing.chipRadius)),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 48, minWidth: 48),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (item.icon != null) ...[
                        Icon(
                          item.icon,
                          size: 18,
                          color: isSelected ? primaryTextColor : secondaryTextColor,
                        ),
                        const SizedBox(width: 6),
                      ],
                      Text(
                        item.label,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                          fontSize: 14,
                          color: isSelected ? primaryTextColor : secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

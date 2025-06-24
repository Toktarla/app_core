import 'package:app_core/src/common/presentation/widgets/inputs/app_radio.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppRadioItem<T> extends StatelessWidget {
  const AppRadioItem({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.isSelected,
    super.key,
  });

  final String title;
  final T value;
  final T? groupValue;
  final ValueChanged<T> onChanged;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textStyles.bodyLarge2,
          ),
          AppRadio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            isSelected: isSelected,
          ),
        ],
      ),
    );
  }
}

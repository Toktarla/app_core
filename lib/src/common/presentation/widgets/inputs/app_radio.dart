import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/common/utils/asset_helper.dart';
import 'package:flutter/material.dart';

class AppRadio<T> extends StatefulWidget {
  const AppRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.isSelected,
    super.key,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T>? onChanged;
  final bool? isSelected;

  @override
  State<AppRadio<T>> createState() => _AppRadioState();
}

class _AppRadioState<T> extends State<AppRadio<T>> {
  @override
  Widget build(BuildContext context) {
    final selected = widget.isSelected ?? widget.value == widget.groupValue;

    final borderColor =
        selected ? context.colors.primary : context.colors.stroke;
    final backgroundColor =
        selected ? context.colors.primary : Colors.transparent;

    return InkWell(
      onTap: () => widget.onChanged?.call(widget.value),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        width: 24,
        height: 24,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: 4,
          ),
        ),
        child: selected ? AssetHelper.checkSvg.svg() : null,
      ),
    );
  }
}

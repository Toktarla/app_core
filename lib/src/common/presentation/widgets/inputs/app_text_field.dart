import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum TextFieldSuffixType {
  none,
  arrowRight,
  custom,
}

class AppTextField extends StatefulWidget {
  const AppTextField({
    this.onTap,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.labelText,
    this.hintText,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.suffixIcon,
    this.suffixType = TextFieldSuffixType.none,
    this.validator,
    super.key,
  });

  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final bool enabled;
  final bool readOnly;
  final bool obscureText;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final TextFieldSuffixType suffixType;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (widget.readOnly && _focusNode.hasFocus) {
        _focusNode.unfocus();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Widget? _getSuffixIcon(BuildContext context) {
    final icon = switch (widget.suffixType) {
      TextFieldSuffixType.arrowRight => Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: _getHintColor(context),
        ),
      TextFieldSuffixType.custom => widget.suffixIcon,
      TextFieldSuffixType.none => null,
    };

    return icon == null
        ? null
        : Padding(
            padding: const EdgeInsets.only(right: 8),
            child: icon,
          );
  }

  Color _getHintColor(BuildContext context) => widget.enabled
      ? context.colors.textSecondary
      : context.colors.textDisabled.withValues(alpha: 0.5);

  Color _getDisabledTextColor(BuildContext context) =>
      context.colors.textDisabled.withValues(alpha: 0.5);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: context.textStyles.bodyLarge1.copyWith(
              color: !widget.enabled ? _getDisabledTextColor(context) : null,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          focusNode: _focusNode,
          onTap: widget.onTap,
          onTapOutside: (_) {
            _focusNode.unfocus();
          },
          onChanged: widget.onChanged,
          controller: widget.controller,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          obscureText: widget.obscureText,
          style: context.textStyles.bodyLarge1.copyWith(
            color: !widget.enabled ? _getDisabledTextColor(context) : null,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: context.theme.inputDecorationTheme.hintStyle?.copyWith(
              color: _getHintColor(context),
            ),
            suffixIcon: _getSuffixIcon(context),
            suffixIconColor: _getHintColor(context),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 40,
              maxHeight: 24,
            ),
            counterStyle: const TextStyle(
              color: AppColors.lightGray,
            ),
          ),
        ),
      ],
    );
  }
}

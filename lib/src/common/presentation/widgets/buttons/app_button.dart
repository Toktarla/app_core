import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/presentation/widgets/app_loading_indicator.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

enum AppButtonSuffixType {
  none,
  plus,
  custom,
}

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.style,
    required this.text,
    this.isExpanded = false,
    this.isLoading = false,
    this.suffixType = AppButtonSuffixType.none,
    this.customSuffix,
    super.key,
  });

  final VoidCallback? onPressed;
  final String text;
  final ButtonStyle style;
  final bool isExpanded;
  final bool isLoading;
  final AppButtonSuffixType suffixType;
  final Widget? customSuffix;

  @override
  Widget build(BuildContext context) {
    Widget suffix;
    switch (suffixType) {
      case AppButtonSuffixType.plus:
        suffix = const Icon(Icons.add);
      case AppButtonSuffixType.custom:
        suffix = customSuffix ?? const SizedBox.shrink();
      case AppButtonSuffixType.none:
        suffix = const SizedBox.shrink();
    }

    return SizedBox(
      width: isExpanded ? double.infinity : null,
      height: 48,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: style,
        child: isLoading
            ? AppLoadingIndicator(
                size: 32,
                color: style.foregroundColor?.resolve({}),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  if (suffixType != AppButtonSuffixType.none) ...[
                    const SizedBox(width: 8),
                    Theme(
                      data: context.theme.copyWith(
                        iconTheme: IconThemeData(
                          color: onPressed == null
                              ? style.foregroundColor
                                  ?.resolve({WidgetState.disabled})
                              : style.foregroundColor?.resolve({}),
                        ),
                      ),
                      child: suffix,
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}

class AppButtonStyles {
  AppButtonStyles._();

  static ButtonStyle primary(BuildContext context) => ElevatedButton.styleFrom(
        backgroundColor: context.colors.primary,
        foregroundColor: AppColors.white,
        disabledBackgroundColor:
            context.colors.primaryLight.withValues(alpha: 0.5),
        disabledForegroundColor: AppColors.white,
        shadowColor: Colors.transparent,
      );

  static ButtonStyle secondary(BuildContext context) =>
      ElevatedButton.styleFrom(
        backgroundColor: context.colors.secondary,
        foregroundColor: context.colors.primary,
        disabledBackgroundColor: context.colors.secondary,
        disabledForegroundColor: AppColors.white,
        shadowColor: Colors.transparent,
      );
}

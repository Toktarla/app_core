import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/l10n/localization.dart';
import 'package:flutter/material.dart';

class ErrorPlaceholder extends StatelessWidget {
  const ErrorPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 48,
            color: AppColors.red,
          ),
          const SizedBox(height: 10),
          Text(
            L10n.current.error,
            style: context.textStyles.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            L10n.current.somethingWentWrong,
            style: context.textStyles.bodyLarge3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

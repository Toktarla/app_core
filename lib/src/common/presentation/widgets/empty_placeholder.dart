import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/core/assets/generated/assets.gen.dart';
import 'package:app_core/src/l10n/localization.dart';
import 'package:flutter/material.dart';

class EmptyPlaceholder extends StatelessWidget {
  const EmptyPlaceholder({
    this.mini = false,
    super.key,
  });

  final bool mini;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.empty.svg(
            width: mini ? 48 : 64,
            height: mini ? 48 : 64,
            colorFilter: ColorFilter.mode(
              context.colors.textPrimary,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            L10n.current.notFound,
            style: context.textStyles.bodyLarge4.copyWith(
              fontSize: mini ? 16 : 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

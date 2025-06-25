import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/common/utils/asset_helper.dart';
import 'package:app_core/src/l10n/localization.dart' as _l10n;
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
          AssetHelper.emptySvg.svg(
            width: mini ? 48 : 64,
            height: mini ? 48 : 64,
            colorFilter: ColorFilter.mode(
              context.colors.textPrimary,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _l10n.L10n.current.notFound,
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

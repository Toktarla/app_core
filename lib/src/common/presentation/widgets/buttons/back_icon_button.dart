import 'package:app_core/src/common/presentation/widgets/buttons/app_icon_button.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/common/utils/asset_helper.dart';
import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) => AppIconButton(
        onPressed: () => Navigator.pop(context),
        child: AssetHelper.arrowLeftSvg.svg(
            colorFilter:
                ColorFilter.mode(context.colors.textPrimary, BlendMode.srcIn)),
      );
}

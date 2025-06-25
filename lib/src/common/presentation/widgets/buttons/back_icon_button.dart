import 'package:app_core/src/common/presentation/widgets/buttons/app_icon_button.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/core/assets/generated/assets.gen.dart' as _assets;
import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) => AppIconButton(
        onPressed: () => Navigator.pop(context),
        child: _assets.Assets.icons.arrowLeft.svg(
            colorFilter:
                ColorFilter.mode(context.colors.textPrimary, BlendMode.srcIn)),
      );
}

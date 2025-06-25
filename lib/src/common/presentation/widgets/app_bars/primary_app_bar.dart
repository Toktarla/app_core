import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/common/utils/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    required this.title,
    this.text,
    this.suffix,
    this.onPop,
    super.key,
  });

  final String title;
  final String? text;

  final Widget? suffix;

  final void Function()? onPop;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.strokeLight),
                  ),
                  child: SvgPicture.asset(
                    AssetHelper.arrowLeftPath,
                    colorFilter: ColorFilter.mode(
                      context.theme.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (text == null)
            Expanded(
              flex: 4,
              child: Text(
                title,
                style: context.textStyles.bodyLarge3,
                textAlign: TextAlign.center,
              ),
            )
          else
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: context.textStyles.bodyLarge3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          if (suffix != null)
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: suffix,
              ),
            )
          else
            const Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}

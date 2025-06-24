import 'package:app_core/src/common/presentation/widgets/buttons/back_icon_button.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.title,
    this.leading,
    this.leadingWidth = 48,
    this.actions,
    this.centerTitle,
    super.key,
  });

  final String? title;
  final Widget? leading;
  final double leadingWidth;
  final List<Widget>? actions;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) => AppBar(
        leading: leading ?? _buildBackButton(context),
        leadingWidth: leadingWidth,
        title: title != null ? Text(title!) : null,
        titleTextStyle: context.textStyles.bodyLarge3,
        centerTitle: centerTitle,
        actions: actions,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? _buildBackButton(BuildContext context) =>
      ModalRoute.of(context)?.canPop ?? false
          ? const Padding(
              padding: EdgeInsets.only(left: 8),
              child: BackIconButton(),
            )
          : null;
}

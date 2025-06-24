// ignore_for_file: deprecated_member_use

import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:app_core/src/l10n/localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditOrDeletePopUp extends StatefulWidget {
  const EditOrDeletePopUp({
    required this.onTapEdit,
    required this.onTapDelete,
    super.key,
  });

  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  @override
  State<EditOrDeletePopUp> createState() => _EditOrDeletePopUpState();
  static Future<void> show(
    BuildContext context, {
    void Function()? onTapEdit,
    void Function()? onTapDelete,
  }) async =>
      showCupertinoModalPopup(
        context: context,
        builder: (context) => EditOrDeletePopUp(
          onTapEdit: onTapEdit,
          onTapDelete: onTapDelete,
        ),
      );
}

class _EditOrDeletePopUpState extends State<EditOrDeletePopUp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoThemeData(
        brightness: Theme.of(context).brightness,
        scaffoldBackgroundColor: Theme.of(context).cardColor.withOpacity(0.01),
      ),
      child: CupertinoActionSheet(
        actions: [
          if (widget.onTapEdit != null)
            ColoredBox(
              color: Theme.of(context).cardColor,
              child: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();

                  widget.onTapEdit!();
                },
                child: Text(
                  L10n.current.edit,
                  style: context.textStyles.bodyLarge1,
                ),
              ),
            ),
          if (widget.onTapDelete != null)
            ColoredBox(
              color: Theme.of(context).cardColor,
              child: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();

                  widget.onTapDelete!();
                },
                child: Text(
                  L10n.current.delete,
                  style: context.textStyles.bodyLarge1.copyWith(
                    color: AppColors.red,
                  ),
                ),
              ),
            ),
        ],
        cancelButton: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              L10n.current.cancel,
              style: context.textStyles.bodyLarge4,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:app_core/src/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.body,
    this.title,
    this.padding = const EdgeInsets.only(
      top: 16,
      left: 16,
      right: 16,
      bottom: 32,
    ),
    this.useSafeArea = true,
    this.trailingWidget,
    super.key,
  });

  final Widget body;
  final String? title;
  final EdgeInsetsGeometry padding;
  final bool useSafeArea;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    final child = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title!,
                  style: context.textStyles.headlineSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailingWidget ??
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: context.colors.textSecondary,
                      size: 32,
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 24),
        ],
        body,
      ],
    );

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.backgroundPrimary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      padding: padding,
      child: useSafeArea ? SafeArea(child: child) : child,
    );
  }
}

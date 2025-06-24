import 'package:flutter/material.dart';

/// Makes default hardcoded divider on top of the footerButtons
/// to transparent color
class TransparentFooterDivider extends StatelessWidget {
  const TransparentFooterDivider({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: child,
    );
  }
}

import 'package:app_core/src/theme/domain/theme_colors.dart';
import 'package:app_core/src/theme/domain/theme_text_styles.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on ThemeData {
  /// `colors` returns colors of the `BuildContext`.
  IColors get colors => extension<IColors>()!;

  /// `textStyles` returns text styles of the `BuildContext`.
  ITextStyles get textStyles => extension<ITextStyles>()!;
}

extension ThemeModeExtension on ThemeMode {
  R when<R>({
    required R Function() light,
    required R Function() dark,
    required R Function() system,
  }) {
    switch (this) {
      case ThemeMode.light:
        return light();
      case ThemeMode.dark:
        return dark();
      case ThemeMode.system:
        return system();
    }
  }
}

import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/theme/presentation/theme_colors.dart';
import 'package:app_core/src/theme/presentation/theme_text_styles.dart';
import 'package:app_core/src/theme/presentation/themes/text_styles.dart';
import 'package:flutter/material.dart';

final class DarkThemeData {
  /// `getBaseDarkTheme` is a function that
  /// returns a Dark `ThemeData` for the app.
  static ThemeData getTheme({required Color seed}) {
    final baseTheme = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        primary: seed,
        seedColor: seed,
        brightness: Brightness.dark,
      ),
    );
    return baseTheme.copyWith(
      primaryColor: AppColors.white,
      extensions: [colors, getTextStyles(_textColor)],
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: textStyles.bodyLarge1,
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: colors.backgroundPrimary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colors.stroke,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colors.stroke,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colors.primary,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colors.stroke,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.red,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          textStyle: WidgetStateProperty.all(textStyles.bodyLarge2),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primary;
          }
          return AppColors.white;
        }),
        checkColor: WidgetStateProperty.all(AppColors.white),
        side: BorderSide.none,
      ),
      cardColor: colors.backgroundPrimary,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  static ThemeColors get colors => const ThemeColors(
        primary: AppColors.primary,
        primaryLight: AppColors.primaryLight,
        secondary: AppColors.secondary,
        backgroundPrimary: AppColors.backgroundPrimaryDark,
        backgroundSecondary: AppColors.backgroundSecondaryDark,
        cardBackground: AppColors.backgroundSecondaryDark,
        inputBackground: Colors.transparent,
        tabBar: AppColors.tabBarDark,
        stroke: AppColors.strokeDark,
        textPrimary: AppColors.textPrimaryDark,
        textSecondary: AppColors.textSecondaryDark,
        textDisabled: AppColors.textDisabledDark,
      );

  static ThemeTextStyles get textStyles => getTextStyles(_textColor);

  static Color get _textColor => AppColors.white;
}

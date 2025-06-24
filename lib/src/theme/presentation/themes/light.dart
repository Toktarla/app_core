import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/utils.dart';
import 'package:app_core/src/theme/presentation/theme_colors.dart';
import 'package:app_core/src/theme/presentation/theme_text_styles.dart';
import 'package:app_core/src/theme/presentation/themes/text_styles.dart';
import 'package:flutter/material.dart';

final class LightThemeData {
  /// `getBaseLightTheme` is a function that
  /// returns a Light `ThemeData` for the app.
  static ThemeData getTheme({required Color seed}) {
    final baseTheme = ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: seed,
        secondary: AppUtils.adjustColorBrightness(seed, 0.8),
      ),
    ).copyWith(
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
      ),
      primaryColor: AppColors.black,
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
        side: BorderSide(
          width: 2,
          color: colors.stroke,
        ),
      ),
      cardColor: colors.backgroundPrimary,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
    return baseTheme.copyWith(
      extensions: [colors, textStyles],
    );
  }

  static ThemeColors get colors => const ThemeColors(
        primary: AppColors.primary,
        primaryLight: AppColors.primaryLight,
        secondary: AppColors.secondary,
        backgroundPrimary: AppColors.backgroundPrimaryLight,
        backgroundSecondary: AppColors.backgroundSecondaryLight,
        cardBackground: AppColors.white,
        inputBackground: AppColors.inputBackgroundLight,
        tabBar: AppColors.tabBarLight,
        stroke: AppColors.strokeLight,
        textPrimary: AppColors.textPrimaryLight,
        textSecondary: AppColors.textSecondaryLight,
        textDisabled: AppColors.textDisabledLight,
      );

  static ThemeTextStyles get textStyles => getTextStyles(_textColor);

  static Color get _textColor => colors.textPrimary;
}

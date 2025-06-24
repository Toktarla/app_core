import 'package:app_core/src/theme/domain/theme_colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

final class ThemeColors extends Equatable implements IColors {
  const ThemeColors({
    required this.primary,
    required this.primaryLight,
    required this.secondary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.cardBackground,
    required this.inputBackground,
    required this.tabBar,
    required this.stroke,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
  });

  // Base Colors
  @override
  final Color primary;
  @override
  final Color primaryLight;
  @override
  final Color secondary;

  // Background Colors
  @override
  final Color backgroundPrimary;
  @override
  final Color backgroundSecondary;
  @override
  final Color cardBackground;
  @override
  final Color inputBackground;
  @override
  final Color tabBar;
  @override
  final Color stroke;

  // Text Colors
  @override
  final Color textPrimary;
  @override
  final Color textSecondary;
  @override
  final Color textDisabled;

  @override
  ThemeColors copyWith({
    Color? primary,
    Color? primaryLight,
    Color? secondary,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? cardBackground,
    Color? inputBackground,
    Color? tabBar,
    Color? stroke,
    Color? textPrimary,
    Color? textSecondary,
    Color? textDisabled,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      secondary: secondary ?? this.secondary,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      cardBackground: cardBackground ?? this.cardBackground,
      inputBackground: inputBackground ?? this.inputBackground,
      tabBar: tabBar ?? this.tabBar,
      stroke: stroke ?? this.stroke,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textDisabled: textDisabled ?? this.textDisabled,
    );
  }

  @override
  ThemeExtension<IColors> lerp(ThemeExtension<IColors>? other, double t) {
    if (other is! ThemeColors) return this;

    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
      backgroundSecondary:
          Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      inputBackground: Color.lerp(inputBackground, other.inputBackground, t)!,
      tabBar: Color.lerp(tabBar, other.tabBar, t)!,
      stroke: Color.lerp(stroke, other.stroke, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
    );
  }

  @override
  Object get type => IColors;

  @override
  List<Object?> get props => [
        primary,
        primaryLight,
        secondary,
        backgroundPrimary,
        backgroundSecondary,
        inputBackground,
        tabBar,
        stroke,
        textPrimary,
        textSecondary,
        textDisabled,
      ];
}

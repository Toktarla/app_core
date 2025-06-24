import 'package:flutter/material.dart';

/// Abstract interface class that defines the color scheme for the app theme
abstract interface class IColors extends ThemeExtension<IColors> {
  abstract final Color primary;
  abstract final Color primaryLight;
  abstract final Color secondary;

  abstract final Color backgroundPrimary;
  abstract final Color backgroundSecondary;
  abstract final Color cardBackground;
  abstract final Color inputBackground;
  abstract final Color tabBar;
  abstract final Color stroke;

  abstract final Color textPrimary;
  abstract final Color textSecondary;
  abstract final Color textDisabled;
}

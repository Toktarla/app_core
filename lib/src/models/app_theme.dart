import 'package:app_core/src/common/constants/app_colors.dart';
import 'package:app_core/src/common/utils/extensions/map_indexed.dart';
import 'package:app_core/src/theme/presentation/themes/dark.dart';
import 'package:app_core/src/theme/presentation/themes/light.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// An immutable class that holds properties needed
/// to build a [ThemeData] for the app.
@immutable
final class AppTheme with Diagnosticable {
  AppTheme({required this.mode, this.seed = AppColors.primary})
      : darkTheme = DarkThemeData.getTheme(seed: seed),
        lightTheme = LightThemeData.getTheme(seed: seed);

  factory AppTheme.fromString(String value) => AppTheme(
        mode: ThemeMode.values.firstWhereOrNull(
              (e) => e.name == value,
            ) ??
            ThemeMode.system,
      );

  /// The type of theme to use.
  final ThemeMode mode;

  /// The seed color to generate the [ColorScheme] from.
  final Color seed;

  /// The dark [ThemeData] for this [AppTheme].
  final ThemeData darkTheme;

  /// The light [ThemeData] for this [AppTheme].
  final ThemeData lightTheme;

  /// The default [AppTheme].
  static final defaultTheme = AppTheme(
    mode: PlatformDispatcher.instance.platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light,
  );

  /// The [ThemeData] for this [AppTheme].
  /// This is computed based on the [mode].
  ThemeData computeTheme() => switch (mode) {
        ThemeMode.light => lightTheme,
        ThemeMode.dark => darkTheme,
        ThemeMode.system =>
          PlatformDispatcher.instance.platformBrightness == Brightness.dark
              ? darkTheme
              : lightTheme,
      };

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('seed', seed))
      ..add(EnumProperty<ThemeMode>('type', mode))
      ..add(DiagnosticsProperty<ThemeData>('lightTheme', lightTheme))
      ..add(DiagnosticsProperty<ThemeData>('darkTheme', darkTheme));
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppTheme &&
          runtimeType == other.runtimeType &&
          seed == other.seed &&
          mode == other.mode;

  @override
  int get hashCode => mode.hashCode ^ seed.hashCode;
}

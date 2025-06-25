import 'dart:async';

import 'package:app_core/src/common/constants/preferences.dart';
import 'package:app_core/src/common/utils/extensions/map_indexed.dart';
import 'package:app_core/src/database/preferences/preferences_dao.dart';
import 'package:app_core/src/models/app_theme.dart';
import 'package:flutter/material.dart' show ThemeMode;

/// `ThemeDataSource` is a data source that provides theme data.
/// This is used to set and get theme.
abstract interface class IThemeDataSource {
  /// Set theme
  Future<void> setTheme(AppTheme theme);

  /// Get current theme from cache
  Future<AppTheme?> getTheme();
}

final class ThemeDataSourceLocal extends PreferencesDao
    implements IThemeDataSource {
  const ThemeDataSourceLocal({
    required super.sharedPreferences,
  });

  PreferencesEntry<String> get _themeMode => stringEntry(Preferences.theme);

  @override
  Future<void> setTheme(AppTheme theme) async {
    await _themeMode.setIfNullRemove(theme.mode.name);
  }

  @override
  Future<AppTheme?> getTheme() async {
    final type = _themeMode.read();

    if (type == null) return null;

    final mode = ThemeMode.values.firstWhereOrNull((e) => e.name == type);

    if (mode == null) return null;

    return AppTheme(mode: mode);
  }
}

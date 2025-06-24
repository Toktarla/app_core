import 'package:app_core/src/common/constants/preferences.dart';
import 'package:app_core/src/database/preferences/preferences_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// `AppConfigManager` - A class to manage the app configurations.
/// This class is used to manage the app configurations like first run.
final class AppConfigManager extends PreferencesDao {
  AppConfigManager._(SharedPreferences sharedPreferences)
      : super(sharedPreferences: sharedPreferences);

  factory AppConfigManager.initialize(SharedPreferences sharedPreferences) {
    _instance ??= AppConfigManager._(sharedPreferences);
    return _instance!;
  }
  static AppConfigManager? _instance;

  static AppConfigManager get instance {
    if (_instance == null) {
      throw Exception(
        'AppConfigManager not initialized. Call initialize() first.',
      );
    }
    return _instance!;
  }

  PreferencesEntry<bool> get _firstRun => boolEntry(Preferences.firstRun);

  bool get isFirstRun {
    final value = _firstRun.read();
    if (value == null) return true;

    return value;
  }

  Future<void> setFirstRun({
    required bool? value,
  }) async {
    await _firstRun.setIfNullRemove(value);
  }
}

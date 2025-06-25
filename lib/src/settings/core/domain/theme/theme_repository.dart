
import 'package:app_core/app_core.dart';

/// Theme repository that persists and retrieves theme information
abstract interface class IThemeRepository {
  /// Get theme
  Future<AppTheme?> getTheme();

  /// Set theme
  Future<void> setTheme(AppTheme theme);
}

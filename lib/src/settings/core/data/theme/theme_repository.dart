
import 'package:app_core/src/models/app_theme.dart';
import 'package:app_core/src/settings/core/data/theme/theme_datasource.dart';
import 'package:app_core/src/settings/core/domain/theme/theme_repository.dart';

/// Theme repository implementation
final class ThemeRepository implements IThemeRepository {
  /// Create theme repository
  const ThemeRepository({
    required IThemeDataSource themeDataSource,
  }) : _themeDataSource = themeDataSource;

  final IThemeDataSource _themeDataSource;

  @override
  Future<AppTheme?> getTheme() => _themeDataSource.getTheme();

  @override
  Future<void> setTheme(AppTheme theme) => _themeDataSource.setTheme(theme);
}

import 'package:app_core/src/core/assets/generated/assets.gen.dart' as _gen;

/// Helper class to access assets without exposing the Assets class name
class AssetHelper {
  const AssetHelper._();

  /// Get arrow left icon path
  static String get arrowLeftPath => _gen.Assets.icons.arrowLeft.path;
  
  /// Get arrow left icon SVG
  static _gen.SvgGenImage get arrowLeftSvg => _gen.Assets.icons.arrowLeft;
  
  /// Get check icon SVG
  static _gen.SvgGenImage get checkSvg => _gen.Assets.icons.check;
  
  /// Get empty icon SVG
  static _gen.SvgGenImage get emptySvg => _gen.Assets.icons.empty;
  
  /// Get fonts
  static _gen.$AssetsFontsGen get fonts => _gen.Assets.fonts;
} 
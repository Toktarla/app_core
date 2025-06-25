import 'package:app_core/src/theme/domain/theme_colors.dart';
import 'package:app_core/src/theme/domain/theme_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension MediaContextExtension on BuildContext {
  Size get mediaSize => MediaQuery.sizeOf(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  double get height => mediaSize.height;

  double get width => mediaSize.width;
}

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  IColors get colors => theme.extension<IColors>()!;

  ITextStyles get textStyles => theme.extension<ITextStyles>()!;

  bool get isDark => theme.brightness == Brightness.dark;

  bool get isLight => theme.brightness == Brightness.light;
}

extension PlatformContextExtension on BuildContext {
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;

  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  bool get isFuchsia => Theme.of(this).platform == TargetPlatform.fuchsia;

  bool get isMacOS => Theme.of(this).platform == TargetPlatform.macOS;

  bool get isLinux => Theme.of(this).platform == TargetPlatform.linux;

  bool get isWindows => Theme.of(this).platform == TargetPlatform.windows;

  bool get isWeb => kIsWeb;
}

extension InheritedContextExtension on BuildContext {
  T? inhMaybeOf<T extends InheritedWidget>({bool listen = true}) => listen
      ? dependOnInheritedWidgetOfExactType<T>()
      : getInheritedWidgetOfExactType<T>();

  T inhOf<T extends InheritedWidget>({bool listen = true}) =>
      inhMaybeOf<T>(listen: listen) ??
      (throw ArgumentError(
        'Out of scope, not found inherited widget a $T of the exact type',
        'out_of_scope',
      ));

  T? maybeInheritFrom<A extends Object, T extends InheritedModel<A>>(
    A? aspect,
  ) =>
      InheritedModel.inheritFrom<T>(this, aspect: aspect);

  T inheritFrom<A extends Object, T extends InheritedModel<A>>({A? aspect}) =>
      InheritedModel.inheritFrom<T>(this, aspect: aspect) ??
      (throw ArgumentError(
        'Out of scope, not found inherited model a $T of the exact type',
        'out_of_scope',
      ));
}
import 'package:app_core/src/theme/domain/theme_text_styles.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
final class ThemeTextStyles extends Equatable implements ITextStyles {
  const ThemeTextStyles({
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.bodyLarge1,
    required this.bodyLarge2,
    required this.bodyLarge3,
    required this.bodyLarge4,
    required this.bodySmall1,
    required this.bodySmall2,
    required this.bodySmall3,
    required this.bodySmall4,
    required this.captionLarge1,
    required this.captionLarge2,
    required this.captionLarge3,
    required this.captionLarge4,
    required this.captionSmall1,
    required this.captionSmall2,
    required this.captionSmall3,
    required this.captionSmall4,
  });

  @override
  final TextStyle headlineLarge;
  @override
  final TextStyle headlineMedium;
  @override
  final TextStyle headlineSmall;

  @override
  final TextStyle bodyLarge1;
  @override
  final TextStyle bodyLarge2;
  @override
  final TextStyle bodyLarge3;
  @override
  final TextStyle bodyLarge4;

  @override
  final TextStyle bodySmall1;
  @override
  final TextStyle bodySmall2;
  @override
  final TextStyle bodySmall3;
  @override
  final TextStyle bodySmall4;

  @override
  final TextStyle captionLarge1;
  @override
  final TextStyle captionLarge2;
  @override
  final TextStyle captionLarge3;
  @override
  final TextStyle captionLarge4;

  @override
  final TextStyle captionSmall1;
  @override
  final TextStyle captionSmall2;
  @override
  final TextStyle captionSmall3;
  @override
  final TextStyle captionSmall4;

  @override
  ThemeTextStyles copyWith({
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? bodyLarge1,
    TextStyle? bodyLarge2,
    TextStyle? bodyLarge3,
    TextStyle? bodyLarge4,
    TextStyle? bodySmall1,
    TextStyle? bodySmall2,
    TextStyle? bodySmall3,
    TextStyle? bodySmall4,
    TextStyle? captionLarge1,
    TextStyle? captionLarge2,
    TextStyle? captionLarge3,
    TextStyle? captionLarge4,
    TextStyle? captionSmall1,
    TextStyle? captionSmall2,
    TextStyle? captionSmall3,
    TextStyle? captionSmall4,
  }) =>
      ThemeTextStyles(
        headlineLarge: headlineLarge ?? this.headlineLarge,
        headlineMedium: headlineMedium ?? this.headlineMedium,
        headlineSmall: headlineSmall ?? this.headlineSmall,
        bodyLarge1: bodyLarge1 ?? this.bodyLarge1,
        bodyLarge2: bodyLarge2 ?? this.bodyLarge2,
        bodyLarge3: bodyLarge3 ?? this.bodyLarge3,
        bodyLarge4: bodyLarge4 ?? this.bodyLarge4,
        bodySmall1: bodySmall1 ?? this.bodySmall1,
        bodySmall2: bodySmall2 ?? this.bodySmall2,
        bodySmall3: bodySmall3 ?? this.bodySmall3,
        bodySmall4: bodySmall4 ?? this.bodySmall4,
        captionLarge1: captionLarge1 ?? this.captionLarge1,
        captionLarge2: captionLarge2 ?? this.captionLarge2,
        captionLarge3: captionLarge3 ?? this.captionLarge3,
        captionLarge4: captionLarge4 ?? this.captionLarge4,
        captionSmall1: captionSmall1 ?? this.captionSmall1,
        captionSmall2: captionSmall2 ?? this.captionSmall2,
        captionSmall3: captionSmall3 ?? this.captionSmall3,
        captionSmall4: captionSmall4 ?? this.captionSmall4,
      );

  @override
  ThemeTextStyles lerp(ThemeExtension<ITextStyles>? other, double t) {
    if (other is! ThemeTextStyles) return this;
    return ThemeTextStyles(
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      bodyLarge1: TextStyle.lerp(bodyLarge1, other.bodyLarge1, t)!,
      bodyLarge2: TextStyle.lerp(bodyLarge2, other.bodyLarge2, t)!,
      bodyLarge3: TextStyle.lerp(bodyLarge3, other.bodyLarge3, t)!,
      bodyLarge4: TextStyle.lerp(bodyLarge4, other.bodyLarge4, t)!,
      bodySmall1: TextStyle.lerp(bodySmall1, other.bodySmall1, t)!,
      bodySmall2: TextStyle.lerp(bodySmall2, other.bodySmall2, t)!,
      bodySmall3: TextStyle.lerp(bodySmall3, other.bodySmall3, t)!,
      bodySmall4: TextStyle.lerp(bodySmall4, other.bodySmall4, t)!,
      captionLarge1: TextStyle.lerp(captionLarge1, other.captionLarge1, t)!,
      captionLarge2: TextStyle.lerp(captionLarge2, other.captionLarge2, t)!,
      captionLarge3: TextStyle.lerp(captionLarge3, other.captionLarge3, t)!,
      captionLarge4: TextStyle.lerp(captionLarge4, other.captionLarge4, t)!,
      captionSmall1: TextStyle.lerp(captionSmall1, other.captionSmall1, t)!,
      captionSmall2: TextStyle.lerp(captionSmall2, other.captionSmall2, t)!,
      captionSmall3: TextStyle.lerp(captionSmall3, other.captionSmall3, t)!,
      captionSmall4: TextStyle.lerp(captionSmall4, other.captionSmall4, t)!,
    );
  }

  @override
  Object get type => ITextStyles;

  @override
  List<Object?> get props => [
        headlineLarge,
        headlineMedium,
        headlineSmall,
        bodyLarge1,
        bodyLarge2,
        bodyLarge3,
        bodyLarge4,
        bodySmall1,
        bodySmall2,
        bodySmall3,
        bodySmall4,
        captionLarge1,
        captionLarge2,
        captionLarge3,
        captionLarge4,
        captionSmall1,
        captionSmall2,
        captionSmall3,
        captionSmall4,
      ];
}

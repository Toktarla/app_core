import 'package:app_core/src/core/assets/generated/fonts.gen.dart';
import 'package:app_core/src/theme/presentation/theme_text_styles.dart';
import 'package:flutter/material.dart';

FontVariation _variation(FontWeight weight) => FontVariation(
      'wght',
      ((weight.index + 1) * 100).toDouble(),
    );

ThemeTextStyles getTextStyles(Color textColor) => ThemeTextStyles(
      headlineLarge: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 40,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 28,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 24,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      bodyLarge1: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontVariations: [_variation(FontWeight.w400)],
        color: textColor,
      ),
      bodyLarge2: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontVariations: [_variation(FontWeight.w500)],
        color: textColor,
      ),
      bodyLarge3: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontVariations: [_variation(FontWeight.w600)],
        color: textColor,
      ),
      bodyLarge4: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 16,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      bodySmall1: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontVariations: [_variation(FontWeight.w400)],
        color: textColor,
      ),
      bodySmall2: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontVariations: [_variation(FontWeight.w500)],
        color: textColor,
      ),
      bodySmall3: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontVariations: [_variation(FontWeight.w600)],
        color: textColor,
      ),
      bodySmall4: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 14,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      captionLarge1: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontVariations: [_variation(FontWeight.w400)],
        color: textColor,
      ),
      captionLarge2: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontVariations: [_variation(FontWeight.w500)],
        color: textColor,
      ),
      captionLarge3: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontVariations: [_variation(FontWeight.w600)],
        color: textColor,
      ),
      captionLarge4: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 12,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
      captionSmall1: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 10,
        fontVariations: [_variation(FontWeight.w400)],
        color: textColor,
      ),
      captionSmall2: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 10,
        fontVariations: [_variation(FontWeight.w500)],
        color: textColor,
      ),
      captionSmall3: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 10,
        fontVariations: [_variation(FontWeight.w600)],
        color: textColor,
      ),
      captionSmall4: TextStyle(
        fontFamily: FontFamily.inter,
        fontSize: 10,
        fontVariations: [_variation(FontWeight.w700)],
        color: textColor,
      ),
    );

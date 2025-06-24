import 'package:flutter/material.dart';

abstract class ITextStyles extends ThemeExtension<ITextStyles> {
  abstract final TextStyle headlineLarge;
  abstract final TextStyle headlineMedium;
  abstract final TextStyle headlineSmall;

  abstract final TextStyle bodyLarge1;
  abstract final TextStyle bodyLarge2;
  abstract final TextStyle bodyLarge3;
  abstract final TextStyle bodyLarge4;

  abstract final TextStyle bodySmall1;
  abstract final TextStyle bodySmall2;
  abstract final TextStyle bodySmall3;
  abstract final TextStyle bodySmall4;

  abstract final TextStyle captionLarge1;
  abstract final TextStyle captionLarge2;
  abstract final TextStyle captionLarge3;
  abstract final TextStyle captionLarge4;

  abstract final TextStyle captionSmall1;
  abstract final TextStyle captionSmall2;
  abstract final TextStyle captionSmall3;
  abstract final TextStyle captionSmall4;
}

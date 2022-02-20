import 'package:flutter/material.dart';

class ApplicationColors {
  static LightColors get light => LightColors();

  static DarkColors get dark => DarkColors();
}

class LightColors extends ApplicationColors {
  static const Color primary = Color(0xFFBB86FA);
  static const Color secondary = Color(0xFF6002EE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF141414);
  static const Color textPrimary = TextColors.lightPrimary;
  static const Color textSecondary = TextColors.lightSecondary;
}

class DarkColors extends ApplicationColors {
  static const Color primary = Color(0xFFBB86FA);
  static const Color secondary = Color(0xFF6002EE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF141414);
  static const Color textPrimary = TextColors.darkPrimary;
  static const Color textSecondary = TextColors.darkPrimary;
}

class TextColors {
  static const Color lightPrimary = Color(0xFFBB86FA);
  static const Color darkPrimary = Color(0xFFBB86FA);
  static const Color lightSecondary = Color(0xFF6002EE);
  static const Color darkSecondary = Color(0xFF6002EE);
}

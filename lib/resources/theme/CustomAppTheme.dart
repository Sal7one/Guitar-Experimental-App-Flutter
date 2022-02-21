import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';

class CustomAppTheme with ChangeNotifier {

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: LightColors.primary,
      scaffoldBackgroundColor: LightColors.scaffold,
      appBarTheme: lightAppBarTheme(), // Custom
      fontFamily: 'Roboto',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: DarkColors.primary,
      scaffoldBackgroundColor: DarkColors.scaffold,
      appBarTheme: darkAppBarTheme(),
    ); // Custom
  }

  static AppBarTheme lightAppBarTheme() {
    return const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: LightColors.appBarBackground,
        foregroundColor: LightColors.appBarContent);
  }

  static AppBarTheme darkAppBarTheme() {
    return const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: DarkColors.appBarBackground,
        foregroundColor: DarkColors.appBarContent);
  }

  static TextTheme get globalTextTheme {
    return const TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
        .apply(
        displayColor: Colors.white,
        bodyColor: Colors.white // Global App Text Style
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';

class CustomAppTheme with ChangeNotifier {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: LightColors.primary,
        scaffoldBackgroundColor: LightColors.scaffold,
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: LightColors.appBarBackground,
            // battery and phone clock
            foregroundColor: LightColors.appBarContent),
        fontFamily: 'Roboto',
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: LightColors.secondary,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: LightColors.textPrimary),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: DarkColors.primary,
        scaffoldBackgroundColor: DarkColors.scaffold,
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: DarkColors.appBarBackground,
            // battery and phone clock
            foregroundColor: DarkColors.appBarContent),
        fontFamily: 'Roboto',
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: DarkColors.secondary,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: DarkColors.textPrimary),
        ));
  }
}

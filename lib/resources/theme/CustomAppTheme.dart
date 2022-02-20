import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';

class CustomAppTheme with ChangeNotifier {

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: LightColors.primary,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: LightColors.secondary,
        )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: DarkColors.primary,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: DarkColors.secondary,
        )
    );
  }
}
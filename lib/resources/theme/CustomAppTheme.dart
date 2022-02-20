import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';

class CustomAppTheme with ChangeNotifier {

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: ComponentColors.primary,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: ComponentColors.secondary,
        )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: ComponentColors.primary,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: ComponentColors.secondary,
        )
    );
  }
}
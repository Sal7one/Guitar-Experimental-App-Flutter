import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';

class CustomAppTheme with ChangeNotifier {
  static ThemeData get globalAppTheme {
    return ThemeData(
      fontFamily: 'open-sans',
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: ApplicationColors.bottomNavItem,
          backgroundColor: ApplicationColors.bottomNavBackground),
    );
  }

  static ThemeData get lightTheme {
    return globalAppTheme.copyWith(
      primaryColor: LightColors.primary,
      scaffoldBackgroundColor: LightColors.scaffold,
      appBarTheme: lightAppBarTheme(),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: LightColors.bottomNavItem,
          backgroundColor: LightColors.bottomNavBackground,
          unselectedItemColor: LightColors.bottomNavItemNotSelected),
      iconTheme: const IconThemeData(color: LightColors.black),
      textTheme: const TextTheme(
        headline1: TextStyle(color: LightColors.black),
        headline5: TextStyle(color: LightColors.black),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  }

  static ThemeData get darkTheme {
    return globalAppTheme.copyWith(
      primaryColor: DarkColors.primary,
      scaffoldBackgroundColor: DarkColors.scaffold,
      appBarTheme: darkAppBarTheme(),
      bottomAppBarColor: DarkColors.bottomNavBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: DarkColors.bottomNavItem,
          backgroundColor: DarkColors.bottomNavBackground,
          unselectedItemColor: DarkColors.bottomNavItemNotSelected),
      iconTheme: const IconThemeData(color: DarkColors.white),
      textTheme: const TextTheme(
        headline1: TextStyle(color: DarkColors.white),
        headline5: TextStyle(color: DarkColors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
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
}

import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/repo/DataStore.dart';
import 'package:guitar_shop_practice/resources/colors/Colors.dart';
import '../../constants.dart';

class ThemeState with ChangeNotifier {
  String _userTheme = DataStore.getString(Constants.themePreferenceKey, Constants.themePreferenceLight);

  String get userTheme => _userTheme;

  get brightness => MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .platformBrightness;

  set userTheme(String value) {
    _userTheme = value;
    notifyListeners();
  }

  ThemeMode get theme {
    switch (userTheme) {
      case Constants.themePreferenceLight:
        return ThemeMode.light;
      case Constants.themePreferenceDark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  ApplicationColors get colors {
    switch (userTheme) {
      case Constants.themePreferenceLight:
        return ApplicationColors.light;
      case Constants.themePreferenceDark:
        return ApplicationColors.dark;
      default:
        {
          switch (brightness) {
            case Brightness.dark:
              return ApplicationColors.dark;
            default:
              return ApplicationColors.light;
          }
        }
    }
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class DataStore {
  static DataStore? _singleton;
  static SharedPreferences? _prefs;

  static Future<DataStore?> getInstance() async {
    if (_singleton == null) {
      if (_singleton == null) {
        // keep local instance till it is fully initialized.
        DataStore singleton = DataStore._();
        await singleton._init();
        _singleton = singleton;
      }
    }
    return _singleton;
  }

  DataStore._();

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // get string TODO ADD NULL CHECKS
  static String getString(String key, String defValue) {
    return _prefs?.getString(key) ?? defValue;
  }

  // put string TODO ADD NULL CHECKS
  static Future<bool>? putString(String key, String? value) {
    return _prefs!.setString(key, value!);
  }

  // get bool
  static bool getBool(String key, {bool defValue = false}) {
    return _prefs!.getBool(key) ?? defValue;
  }

  // put bool
  static Future<bool>? putBool(String key, bool value) {
    return _prefs!.setBool(key, value);
  }

  // get int
  static int getInt(String key, {int defValue = 0}) {
    return _prefs!.getInt(key) ?? defValue;
  }

  // put int.
  static Future<bool>? putInt(String key, int value) {
    return _prefs!.setInt(key, value);
  }

  // get double
  static double getDouble(String key, {double defValue = 0.0}) {
    return _prefs!.getDouble(key) ?? defValue;
  }

  // put double
  static Future<bool>? putDouble(String key, double value) {
    return _prefs!.setDouble(key, value);
  }

  //Sp is initialized
  static bool isInitialized() {
    return _prefs != null;
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setIsFirstTime() async {
    await _prefs.setBool("isFirstTime", false);
  }

  static bool isFirstTime() {
    return _prefs.getBool("isFirstTime") ?? true;
  }

  static bool isAuth() {
    return _prefs.getBool("isAuth") ?? false;
  }

  static Future<void> setIsAuth() async {
    await _prefs.setBool("isAuth", true);
  }
}

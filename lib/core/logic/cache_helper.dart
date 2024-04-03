import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setIsFirstTime() async {
    await _prefs.setBool("isFirstTime", false);
  }

  static bool get isFirstTime {
    return _prefs.getBool("isFirstTime") ?? true;
  }

  static bool get isAuth {
    return _prefs.getBool("isAuth") ?? false;
  }

  static Future<void> setIsAuth() async {
    await _prefs.setBool("isAuth", true);
  }

  static Future<void> saveProfileImg(String? imgPath) async {
    await _prefs.setString("imgPath", imgPath ?? "");
  }
  static String? get profileImage {
    return _prefs.getString("imgPath");
  }
}

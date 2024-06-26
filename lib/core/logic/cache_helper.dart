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

  static Future<void> setIsDoctor({required bool bool}) async {
    await _prefs.setBool("isDoctor", bool);
  }

  static bool get isDoctor {
    return _prefs.getBool("isDoctor")!;
  }

  // static bool get isAuth {
  //   return _prefs.getBool("isAuth") ?? false;
  // }

  static Future<void> saveProfileImg(String? imgPath) async {
    await _prefs.setString("imgPath", imgPath ?? "");
  }

  static String? get profileImage {
    return _prefs.getString("imgPath");
  }

  static Future<void> saveUserDetails(
    String email,
    String userName,
    String userImg,
    String userId,
    bool isNewUser,
    String userToken,
  ) async {
    await _prefs.setString("email", email);
    await _prefs.setString("userName", userName);
    await _prefs.setString("userImg", userImg);
    await _prefs.setString("userId", userId);
    await _prefs.setString("userToken", userToken);
    await _prefs.setBool("isNewUser", isNewUser);
  }

  static bool isAuth()  {
    String? token = _prefs.getString("userToken");

    return token != null || (token ?? "").isNotEmpty;
  }

  //check if user is new to firebase
  static bool get newUser {
    return _prefs.getBool("isNewUser") ?? false;
  }

  static String? get userEmail {
    return _prefs.getString("email");
  }

  static String? get userName {
    return _prefs.getString("userName");
  }

  static String? get userImg {
    return _prefs.getString("userImg");
  }
  static Future<bool> clear() async {
    return await _prefs.clear();
  }


  //API auth

  static Future<void> saveToken(String? access_token) async {
    await _prefs.setString("access_token", access_token??"");
  }

  static String? get getToken {
    return _prefs.getString("access_token")??"";
  }
}





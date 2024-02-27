import 'package:flutter/material.dart';

class AppTheme {
  static var appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:  const AppBarTheme(
      color: Colors.white,
      centerTitle: true,
      elevation: 0,
      titleSpacing: 0,
      surfaceTintColor: Colors.transparent
    ),
    useMaterial3: true,
    fontFamily: "inter",
    dividerTheme: DividerThemeData(
      color: Colors.black.withOpacity(.20),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
            color: Color(0xff39A7A7),
            strokeAlign: BorderSide.strokeAlignInside),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff39A7A7),
      primary: const Color(0xff39A7A7),
      background: const Color(0xff39A7A7),
    ),
  );
}

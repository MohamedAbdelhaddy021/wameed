import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'styles.dart';

class AppTheme {
  static const primaryColor = Color(0xff39A7A7);

  static var appTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "inters",
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              borderSide: BorderSide(
                  color: primaryColor.withOpacity(.29), width: 1.5.w)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              borderSide: BorderSide(
                  color: primaryColor.withOpacity(.29), width: 1.5.w)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              borderSide: BorderSide(
                  color: primaryColor.withOpacity(.29), width: 1.5.w)),
          hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: const Color(0xff323232).withOpacity(.44)),
          fillColor: const Color(0xffACACAC).withOpacity(.10),
          filled: true,
          contentPadding: EdgeInsetsDirectional.symmetric(
              vertical: 20.h, horizontal: 16.w)),
      appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleSpacing: 0,
          titleTextStyle: TextStyles.poppins24BlackSemiBold,
          surfaceTintColor: Colors.transparent),
      useMaterial3: true,
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              minimumSize: Size(double.infinity, 60.h))),
      dividerTheme: DividerThemeData(color: Colors.black.withOpacity(.20)),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(
                color: primaryColor,
                strokeAlign: BorderSide.strokeAlignInside)),
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          background: primaryColor));
}

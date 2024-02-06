import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class TextStyles{
  static TextStyle poppins24BlackSemiBold = TextStyle(
    fontFamily: "poppins",
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle poppins16BlackSemiBold = TextStyle(
    fontFamily: "poppins",
    fontSize: 16.sp,
    color: Colors.black.withOpacity(.57),
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle courgette24TurquoiseRegular =TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 24.sp,
      color: const Color(0xff39A7A7),
      fontFamily: "courgette"
  );
  static TextStyle inter20BlackSemiBold =TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: 20.sp,
      color: Colors.black,
      fontFamily: "inter"
  );
  static TextStyle inter24WhiteBold =TextStyle(
    fontSize: 24.sp,
    fontFamily: "inter",
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle inter16Medium =TextStyle(
    fontSize: 16.sp,
    fontFamily: "inter",
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle poppins14Black55Medium =TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: "poppins",
    color: Colors.black.withOpacity(.55),
  );
  static TextStyle poppins18Black69SemiBold =TextStyle(
    fontSize: 18.sp,
    color: Colors.black.withOpacity(.69),
    fontWeight: FontWeight.w600,
    fontFamily: "poppins",
  );
}
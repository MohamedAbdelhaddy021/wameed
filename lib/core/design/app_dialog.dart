import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_theme.dart';
import '../theming/styles.dart';
import 'app_image.dart';

class AppDialog extends StatelessWidget {
  const AppDialog(
      {super.key,
      required this.buttonText,
      required this.text,
      this.subText = "Done",
      this.onTap});

  final String buttonText, text, subText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
      child: Dialog(
        child: Container(
          width: double.infinity,
          padding: EdgeInsetsDirectional.only(top: 60.w, bottom: 60.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppImage("check_icon_in_circle.png", width: 89.w, height: 89.w),
              SizedBox(height: 48.h),
              Text(text,
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 20.sp,
                      color: Colors.black.withOpacity(.48),
                      fontWeight: FontWeight.w500)),
              Text(subText,
                  style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 20.sp,
                      color: const Color(0xff7AC4C4),
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 40.h),
              Container(
                height: 60.h,
                margin: EdgeInsets.symmetric(horizontal: 32.w),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: AppTheme.primaryColor.withOpacity(.60)),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(1, 1),
                          blurRadius: 8.0),
                      BoxShadow(color: AppTheme.primaryColor.withOpacity(.60)),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-1, -1),
                          blurRadius: 8.0),
                    ],
                    borderRadius: BorderRadius.circular(12.r),
                    border:
                        Border.all(color: AppTheme.primaryColor, width: 1.w)),
                child: Center(
                  child: GestureDetector(
                    onTap: onTap,
                    child: Text(buttonText,
                        style: TextStyles.poppins24BlackSemiBold.copyWith(
                            color: AppTheme.primaryColor, fontSize: 18.sp)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

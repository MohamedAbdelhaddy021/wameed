import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_theme.dart';
import 'app_back.dart';
import 'app_image.dart';

class CustomAppBarWithTextLogo extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWithTextLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const AppBack(),
      toolbarHeight: 70.h,
      centerTitle: false,
      title: Text.rich(
        style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "poppins"),
        TextSpan(
          text: "Wa",
          children: [
            TextSpan(
              text: "M",
              style: TextStyle(
                  fontFamily: "courgette",
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 24.sp),
            ),
            const TextSpan(text: "ee"),
            TextSpan(
                text: "d",
                style: TextStyle(
                    fontFamily: "courgette",
                    fontWeight: FontWeight.w400,
                    fontSize: 24.sp)),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 24.w),
          child: AppImage("splash_app_logo.png", width: 24.w, height: 28.h),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/mutual/auth/login.dart';

import '../../../core/design/app_image.dart';
import '../../../core/design/text_logo.dart';
import '../../../core/logic/cache_helper.dart';
import '../../../core/logic/helper_methods.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsetsDirectional.only(top: 65.h, start: 32.w, end: 32.w),
          child: Column(
            children: [
              const TextLogo(),
              SizedBox(height: 25.h),
              Container(
                height: 400.h,
                width: 326.w,
                child: AppImage("girl_interface_bg.png"),
                decoration: BoxDecoration(
                  color: const Color(0xffBFDFDF).withOpacity(.24),
                  borderRadius: BorderRadius.circular(67.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffBFDFDF).withOpacity(.40),
                      offset: const Offset(0, 0),
                      blurRadius: 10.7,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 74.h),
              FilledButton(
                onPressed: () {
                  CacheHelper.setIsFirstTime();
                  navigateTo(const LoginView());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Get Started",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(width: 17.w),
                    AppImage("arrow_right.svg", width: 24.w, height: 12.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

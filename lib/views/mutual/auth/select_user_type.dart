import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/cache_helper.dart';
import 'package:wameed/views/mutual/auth/login.dart';
import '../../../core/design/app_image.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/utils/app_theme.dart';
import '../../../core/utils/styles.dart';
import 'register.dart';

class SelectUserTypeView extends StatelessWidget {
   SelectUserTypeView({super.key, required this.isFormLogin});
  final bool isFormLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 580.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                padding: EdgeInsets.only(top: 40.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, -3),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(.25)),
                      BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(.25))
                    ]),
                child: Column(children: [
                  Text(
                    "Continue As...",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 32.sp),
                  ),
                  SizedBox(height: 32.h),
                  _Item(
                      text: "Patient",
                      img: "profile.png",
                      onTap: () {
                        isFormLogin? navigateTo(RegisterView(isDoctor: false,)):navigateTo(LoginView());
                        CacheHelper.setIsDoctor(bool: false);
                      }),
                  SizedBox(height: 32.h),
                  _Item(
                      text: "Doctor",
                      img: "doctor.png",
                      onTap: () {
                        isFormLogin? navigateTo(RegisterView(isDoctor: true,)):navigateTo(LoginView());
                        CacheHelper.setIsDoctor(bool: true);
                      }),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.text, required this.img, required this.onTap});

  final String text, img;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 176.w,
        height: 176.w,
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImage(img, width: 85.w, height: 85.w, color: Colors.white),
          SizedBox(height: 15.h),
          Text(text, style: TextStyles.inter24WhiteBold),
        ]),
      ),
    );
  }
}

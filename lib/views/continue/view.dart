import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/patient_app/auth/register/view.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/theming/styles.dart';
import '../doctor_app/doctor_registration/view.dart';

class ContinueView extends StatelessWidget {
  const ContinueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                          color: Colors.black.withOpacity(.25),
                        ),
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(.25),
                        )
                      ]),
                  child: Column(
                    children: [
                      Text(
                        "Continue As...",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32.sp,
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      _Item(
                        text: "Patient",
                        img: "assets/icons/user.png",
                        onTap: () {
                          navigateTo(const RegisterView());
                        },
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      _Item(
                        text: "Doctor",
                        img: "assets/icons/doctor.png",
                        onTap: () {
                          navigateTo(const DoctorRegistrationView());
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item(
      {super.key, required this.text, required this.img, required this.onTap});

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
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.r),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(img),
              width: 85.w,
              height: 85.w,
              color: Colors.white,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              text,
              style: TextStyles.inter24WhiteBold,
            ),
          ],
        ),
      ),
    );
  }
}

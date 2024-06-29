import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/cache_helper.dart';

import '../../../../core/design/register_button.dart';
import '../../../../core/logic/firebase_auth_services.dart';
import '../../../../core/logic/helper_methods.dart';
import '../select_user_type.dart';

class HaveAccountOrNot extends StatelessWidget {
  final bool isFromLogin;
  bool isFromFirebase=true;

   HaveAccountOrNot({super.key, this.isFromLogin = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45.h),
        Row(
          children: [
            Expanded(
                child: Divider(
              endIndent: 10.w,
              thickness: 1.5.h,
            )),
            Text(
              isFromLogin ? "Or Log in with" : "Or Sign Up with",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
            Expanded(child: Divider(indent: 10.w, thickness: 1.5.h))
          ],
        ),
        SizedBox(height: 48.h),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RegistrationButton(
            imgPath: "facebook_logo.png",
            onTap: () {},
          ),
          SizedBox(width: 18.w),
          RegistrationButton(
              imgPath: "google_logo.png",
              onTap: () {
                FirebaseAuthServices.signInWithGoogle();
                CacheHelper.isFromFirebase(bool: isFromFirebase);
              }),
        ]),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFromLogin
                  ? "Don’t have an account ?"
                  : "Already have an account?",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            TextButton(
              onPressed: () {
                if (isFromLogin) {
                  navigateTo(SelectUserTypeView(isFormLogin: isFromLogin,));
                }else{
                  navigateTo(SelectUserTypeView(isFormLogin: false));
                }
              },
              child: Text(
                isFromLogin ? "Sign up" : "Log in",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: const Color(0xff86C9C9)),
              ),
            )
          ],
        ),
      ],
    );
  }
}

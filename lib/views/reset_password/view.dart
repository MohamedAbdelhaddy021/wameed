import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/design/text_logo.dart';

import '../../core/design/app_field.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/register_button.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w,top: 72.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Password",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "create your new password to log in!",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.40),),
              ),
              SizedBox(height: 44.h,),
              const AppField(labelText: "Password",isPassword: true,bottomPadding: 24,),
              const AppField(labelText: "Confirm password",isPassword: true,bottomPadding: 48,),
              const AppFilledButton(
                text: "set password",
                fontFamily: "poppins",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

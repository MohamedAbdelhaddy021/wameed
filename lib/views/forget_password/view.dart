import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/text_logo.dart';

import '../../core/design/app_field.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/register_button.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 28.w),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,end: 24.w,top: 72.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                "Please enter your email address!",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.40),),
              ),
              SizedBox(height: 44.h,),
              const AppField(labelText: "Enter your email"),
              SizedBox(height: 40.h,),
              AppFilledButton(
                text: "Send Code",
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

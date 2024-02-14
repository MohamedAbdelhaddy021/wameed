import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import '../../../core/design/app_field.dart';
import '../../../core/design/app_filled_button.dart';
import '../verification_otp_code/view.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ForgetPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
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
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
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
                  color: Colors.black.withOpacity(.40),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Form(
                key: _formKey,
                child: AppField(
                  height: 67,
                  labelText: "Enter your email",
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter your email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              AppFilledButton(
                text: "Send Code",
                height: 67,
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    navigateTo(const OTPVerificationCodeView());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

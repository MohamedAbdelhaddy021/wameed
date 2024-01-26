import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/text_logo.dart';

import '../../core/design/app_field.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/register_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Welcome To",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "poppins",
                ),
              ),
              const TextLogo(),
              SizedBox(
                height: 30.h,
              ),
              const AppField(labelText: "Enter your email"),
              SizedBox(
                height: 24.h,
              ),
              const AppField(
                labelText: "Password",
                isPassword: true,
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Colors.black.withOpacity(.67),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const AppFilledButton(
                text: "Log In",
              ),
              SizedBox(
                height: 45.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    endIndent: 10.w,
                    thickness: 1.5.h,
                  )),
                  Text(
                    "Or Log in with",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10.w,
                    thickness: 1.5.h,
                  ))
                ],
              ),
              SizedBox(
                height: 48.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const RegistrationButton(
                    imgPath: "assets/icons/facebook_logo.png",
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  const RegistrationButton(
                    imgPath: "assets/icons/google_logo.png",
                  ),
                ],
              ),
              SizedBox(
                height: 120.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color(0xff86C9C9)),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field.dart';
import 'package:wameed/core/design/arrow_back_button.dart';

import '../../core/design/app_filled_button.dart';
import '../../core/design/register_button.dart';
import '../../core/theming/styles.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const ArrowBackButton(),
        title: Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 19.w, end: 29.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "create your account",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black.withOpacity(.28),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 37.h,
              ),
              SizedBox(
                height: 500.h,
                child: const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      AppField(labelText: "Username"),
                      AppField(labelText: "Email"),
                      AppField(
                          labelText: "Credit number",
                          isPrefix: true,
                          prefixImgPath: "assets/icons/visa_logo.png"),
                      AppField(labelText: "Age"),
                      AppField(labelText: "Gender"),
                      AppField(
                        labelText: "Password",
                        isPassword: true,
                      ),
                      AppField(
                        labelText: "Confirm password",
                        isPassword: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              const AppFilledButton(
                text: "Sign Up",
                height: 67,
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    endIndent: 10.w,
                    thickness: 1.5.h,
                  )),
                  Text(
                    "Or Sign Up with",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10.w,
                    thickness: 1.5.h,
                  ))
                ],
              ),
              SizedBox(
                height: 24.h,
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
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "  log in",
                        style: TextStyles.inter16Medium.copyWith(
                          color: Theme.of(context).primaryColor.withOpacity(.67)
                        ),
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

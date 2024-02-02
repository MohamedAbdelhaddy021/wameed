import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/design/text_logo.dart';
import 'package:wameed/core/theming/styles.dart';
import 'package:wameed/views/doctor_registration/widgets/app_bar_title.dart';

class DoctorRegistrationView extends StatelessWidget {
  const DoctorRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const AppBarTitle(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 12.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.40),
                    ),
                  ),
                  Text.rich(
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins"),
                    TextSpan(
                      text: " Wa",
                      children: [
                        TextSpan(
                          text: "m",
                          style: TextStyle(
                              fontFamily: "satisfy",
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 25.sp),
                        ),
                        const TextSpan(text: "ee"),
                        TextSpan(
                          text: "d",
                          style: TextStyle(
                            fontFamily: "courgette",
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 3.w, top: 24.h),
                height: 610.h,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      AppField(
                        labelText: "Username",
                        radius: 15,
                      ),
                      AppField(
                        labelText: "Email",
                        radius: 15,
                      ),
                      AppField(
                        labelText: "Password",
                        radius: 15,
                        isPassword: true,
                      ),
                      AppField(
                        labelText: "Confirm password",
                        radius: 15,
                        isPassword: true,
                      ),
                      AppField(
                        labelText: "National ID",
                        radius: 15,
                        keyboardType: TextInputType.number,
                      ),
                      AppField(
                        labelText: "Gender",
                        radius: 15,
                      ),
                      AppField(
                          labelText: "Visa",
                          radius: 15,
                          keyboardType: TextInputType.number,
                          isPrefix: true,
                          prefixImgPath: "assets/icons/visa_logo.png"),
                      AppField(
                        labelText: "Qualifications",
                        radius: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              AppFilledButton(
                text: "Register",
                radius: 15,
                onPressed: () {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 3.w),
                child: Row(
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
                          " log in",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color:
                                Theme.of(context).primaryColor.withOpacity(.67),
                          ),
                        ))
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

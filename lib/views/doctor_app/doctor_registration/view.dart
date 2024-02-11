import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_field.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/auth/login/view.dart';
import 'package:wameed/views/doctor_app/doctor_registration/widgets/app_bar_title.dart';
import 'package:wameed/views/doctor_app/times_of_work/view.dart';

class DoctorRegistrationView extends StatelessWidget {
  const DoctorRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const AppBarTitle(),
      ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:  EdgeInsetsDirectional.only(start: 21.w,end: 24.w),
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
                    padding: EdgeInsetsDirectional.only(start: 3.w, top: 23.h),
                    height: 621.h,
                    child:  SingleChildScrollView(
                      child: Column(
                        children: [
                          AppField(
                            labelText: "Username",
                            radius: 15,
                            height: 60,
                          ),
                          AppField(
                            labelText: "Email",
                            radius: 15,
                            height: 60,
                          ),
                          AppField(
                            labelText: "Password",
                            radius: 15,
                            height: 60,
                            isPassword: true,
                          ),
                          AppField(
                            labelText: "Confirm password",
                            radius: 15,
                            height: 60,
                            isPassword: true,
                          ),
                          AppField(
                            labelText: "National ID",
                            radius: 15,
                            height: 60,
                            keyboardType: TextInputType.number,
                          ),
                          AppField(
                            labelText: "Gender",
                            radius: 15,
                            height: 60,
                          ),
                          AppField(
                              labelText: "Visa",
                              radius: 15,
                              height: 60,
                              keyboardType: TextInputType.number,
                              isPrefix: true,
                              prefixImgPath: "assets/icons/visa_logo.png"),
                          AppField(
                            labelText: "Qualifications",
                            radius: 15,
                            height: 60,
                          ),
                          AppField(
                            labelText: "Experience year",
                            radius: 15,
                            height: 60,
                          ),
                          AppField(
                            labelText: "Price of Session",
                            radius: 15,
                            height: 60,
                          ),
                          GestureDetector(
                            onTap: (){
                              navigateTo(const TimesOfWorkView());
                            },
                            child:  AbsorbPointer(
                              child: Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: [
                                  AppField(
                                    labelText: "Time of work",
                                    radius: 15,
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(bottom: 16.h,end: 16.w),
                                    child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 18,),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  AppFilledButton(
                    text: "Register",
                    radius: 15,
                    onPressed: () {},
                  ),
                  Spacer(flex: 3,)

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

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
   DoctorRegistrationView({super.key});

  final _formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: const AppBarTitle(),
      ),
      body: CustomScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding:  EdgeInsetsDirectional.only(start: 21.w,end: 24.w),
              child: Form(
                key: _formKey,
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
                      height: MediaQuery.of(context).size.height/1.35,
                      child:  SingleChildScrollView(
                        child: Column(
                          children: [
                            AppField(
                              labelText: "Username",
                              radius: 20,
                              height: 54,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "Enter a user name";
                                }else {
                                  return null;
                                }
                              },
                            ),
                            AppField(
                              labelText: "Email",
                              radius: 20,
                              height: 54,
                            ),
                            AppField(
                              labelText: "Password",
                              radius: 15,
                              height: 54,
                              isPassword: true,
                            ),
                            AppField(
                              labelText: "Confirm password",
                              radius: 20,
                              height: 54,
                              isPassword: true,
                            ),
                            AppField(
                              labelText: "National ID",
                              radius: 20,
                              height: 54,
                              keyboardType: TextInputType.number,
                            ),
                            AppField(
                              labelText: "Gender",
                              radius: 20,
                              height: 54,
                            ),
                             AppField(
                                labelText: "Visa",
                                radius: 20,
                                height: 54,
                                keyboardType: TextInputType.number,
                                isPrefix: true,
                                prefixImgPath: "assets/icons/visa_logo.png"),
                            AppField(
                              labelText: "Qualifications",
                              radius: 20,
                              height: 54,
                            ),
                            AppField(
                              labelText: "Experience year",
                              radius: 20,
                              height: 54,
                            ),
                            AppField(
                              labelText: "Price of Session",
                              radius: 20,
                              height: 54,
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
                                      radius: 20,
                                      height: 54,
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
                    Spacer(
                    ),
                    AppFilledButton(
                      text: "Register",
                      radius: 15,
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          showDialog(context: context, builder: (context) => Text("data"),);
                        }
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/app_field.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/auth/login/view.dart';
import 'package:wameed/views/doctor_app/doctor_registration/widgets/app_bar_title.dart';
import 'package:wameed/views/doctor_app/times_of_work/view.dart';

class DoctorRegistrationView extends StatelessWidget {
  DoctorRegistrationView({super.key});

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nationalIDController = TextEditingController();

  List<String> items = ["item 1", "item 2", "item 3", "item 4"];
  List<String> genders = ["Male", "Female"];
  String? selectedItem = "Qualifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: const AppBarTitle(),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 21.w, end: 24.w),
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
                                  text: "m ",
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
                        padding:
                            EdgeInsetsDirectional.only(start: 3.w, top: 23.h),
                        height: MediaQuery.of(context).size.height / 1.35,
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              AppField(
                                labelText: "Username",
                                radius: 20,
                                height: 54,
                                isDense: true,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter a user name";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              AppField(
                                labelText: "Email",
                                radius: 20,
                                height: 54,
                                isDense: true,
                                validator: (email) {
                                  if (email!.isEmpty) {
                                    return "Enter an email";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              AppField(
                                labelText: "Password",
                                radius: 15,
                                height: 54,
                                isDense: true,
                                isPassword: true,
                                validator: (pass) {
                                  if (pass!.isEmpty) {
                                    return "Enter a new password";
                                  } else if (pass.length < 8) {
                                    return "Password must be 8 or more characters";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              AppField(
                                labelText: "Confirm password",
                                radius: 20,
                                height: 54,
                                isPassword: true,
                                isDense: true,
                                validator: (confirmPass) {
                                  if (passController.text != confirmPass) {
                                    return "password is not identical";
                                  } else if (confirmPass!.isEmpty) {
                                    return "Enter confirm password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              AppField(
                                labelText: "National ID",
                                radius: 20,
                                height: 54,
                                isDense: true,
                                keyboardType: TextInputType.number,
                              ),
                              DropdownMenu(
                                  dropdownMenuEntries: genders.map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                                  expandedInsets: const EdgeInsets.symmetric(),
                                  hintText: "Gender",
                                  trailingIcon: SvgPicture.asset(
                                      "assets/icons/svgs/arrow_down.svg",width: 16.w
                                    ,),
                                  inputDecorationTheme: InputDecorationTheme(
                                     fillColor: const Color(0xfff7f7f7),
                                    filled: true,
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: const Color(0xff323232).withOpacity(.44),
                                    ),
                                    enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.r),
                                        borderSide:  BorderSide(color: Color(0xff39a7a7).withOpacity(.29),width: 1.5.w)
                                    ),
                                  ),
                                  selectedTrailingIcon:
                                  SvgPicture.asset("assets/icons/svgs/arrow_up.svg",width: 16.w,),
                                  menuStyle: MenuStyle(
                                    alignment: const Alignment(-1, 1.5),
                                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.r)
                                    ))
                                  )),
                              SizedBox(height: 16.h,),
                              AppField(
                                labelText: "Vodafone cash number",
                                radius: 20,
                                height: 54,
                                keyboardType: TextInputType.number,
                                isDense: true,
                                prefixIcon: SvgPicture.asset(
                                  "assets/icons/svgs/vodafone_cash_logo.svg",
                                  width: 22.w,
                                  fit: BoxFit.scaleDown,
                                  height: 22.w,
                                ),
                              ),
                              DropdownMenu(
                                  dropdownMenuEntries: items.map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                                  expandedInsets: const EdgeInsets.symmetric(),
                                  hintText: "Qualifications",
                                  trailingIcon: SvgPicture.asset(
                                    "assets/icons/svgs/arrow_down.svg",width: 16.w
                                    ,),
                                  inputDecorationTheme: InputDecorationTheme(
                                    fillColor: const Color(0xfff7f7f7),
                                    filled: true,
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: const Color(0xff323232).withOpacity(.44),
                                    ),
                                    enabledBorder:  OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.r),
                                        borderSide:  BorderSide(color: Color(0xff39a7a7).withOpacity(.29),width: 1.5.w)
                                    ),
                                  ),
                                  selectedTrailingIcon:
                                  SvgPicture.asset("assets/icons/svgs/arrow_up.svg",width: 16.w,),
                                  menuStyle: MenuStyle(
                                      alignment: const Alignment(-1, 1.5),
                                      backgroundColor: const MaterialStatePropertyAll(Colors.white),
                                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.r)
                                      ))
                                  )),
                              SizedBox(
                                height: 16.h,
                              ),
                              AppField(
                                labelText: "Experience year",
                                radius: 20,
                                height: 54,
                                isDense: true,
                              ),
                              AppField(
                                labelText: "Price of Session",
                                radius: 20,
                                height: 54,
                                isDense: true,
                              ),
                              GestureDetector(
                                onTap: () {
                                  navigateTo(const TimesOfWorkView());
                                },
                                child: AbsorbPointer(
                                  child: Stack(
                                    alignment: AlignmentDirectional.centerEnd,
                                    children: [
                                      AppField(
                                        labelText: "Time of work",
                                        radius: 20,
                                        height: 54,
                                        isDense: true,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            bottom: 16.h, end: 16.w),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.grey,
                                          size: 18,
                                        ),
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
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) => Text("data"),
                            );
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
        ));
  }
}

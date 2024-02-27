
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/app_field.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/doctor_app/doctor_registration/widgets/app_bar_title.dart';
import 'package:wameed/views/doctor_app/times_of_work/view.dart';

class DoctorRegistrationView extends StatefulWidget {
  const DoctorRegistrationView({super.key});

  @override
  State<DoctorRegistrationView> createState() => _DoctorRegistrationViewState();
}


class _DoctorRegistrationViewState extends State<DoctorRegistrationView> {

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passController = TextEditingController();

  final nationalIDController = TextEditingController();

  final priceController = TextEditingController();

  final vodafoneNumController = TextEditingController();

  final experienceController = TextEditingController();

  List<String> items = ["item 1", "item 2", "item 3", "item 4"];

  List<String> genders = ["Male", "Female"];

  String? selectedItem="item 1" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const ArrowBackButton(),
          title: const AppBarTitle(),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsetsDirectional.only(start: 20.w, end: 24.w),
          child: Form(
            key: formKey,
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
                Padding(
                  padding:  EdgeInsetsDirectional.only(start: 4.w,top: 9.h),
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
                        controller: passController,
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
                          if (confirmPass!= passController.text  ) {
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter your ID";
                          } else if (value.length < 14 ||
                              value.length > 14) {
                            return "ID isn't correct";
                          } else {
                            return null;
                          }
                        },
                      ),
                      DropdownMenu(
                          dropdownMenuEntries: genders
                              .map((e) =>
                              DropdownMenuEntry(value: e, label: e))
                              .toList(),
                          expandedInsets: const EdgeInsets.symmetric(),
                          hintText: "Gender",
                          trailingIcon: SvgPicture.asset(
                            "assets/icons/svgs/arrow_down.svg",
                            width: 16.w,
                          ),
                          inputDecorationTheme: InputDecorationTheme(
                            fillColor: const Color(0xfff7f7f7),
                            filled: true,
                            isDense: true,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: const Color(0xff323232)
                                  .withOpacity(.44),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(20.r),
                                borderSide: BorderSide(
                                    color: Color(0xff39a7a7)
                                        .withOpacity(.29),
                                    width: 1.5.w)),
                          ),
                          selectedTrailingIcon: SvgPicture.asset(
                            "assets/icons/svgs/arrow_up.svg",
                            width: 16.w,
                          ),
                          menuStyle: MenuStyle(
                              alignment: const Alignment(-1, 1.5),
                              backgroundColor:
                              const MaterialStatePropertyAll(
                                  Colors.white),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(
                                          20.r))))),
                      SizedBox(
                        height: 16.h,
                      ),
                      AppField(
                        labelText: "Vodafone cash number",
                        radius: 20,
                        height: 54,
                        keyboardType: TextInputType.number,
                        isDense: true,
                        controller: vodafoneNumController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter your number";
                          } else if (value.length < 11 ||
                              value.length > 11) {
                            return "Enter a valid number";
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/svgs/vodafone_cash_logo.svg",
                          width: 22.w,
                          fit: BoxFit.scaleDown,
                          height: 22.w,
                        ),
                      ),
                      // DropdownMenu(
                      //     dropdownMenuEntries: items
                      //         .map((e) =>
                      //             DropdownMenuEntry(value: e, label: e))
                      //         .toList(),
                      //     expandedInsets: const EdgeInsets.symmetric(),
                      //     hintText: "Qualifications",
                      //     trailingIcon: SvgPicture.asset(
                      //       "assets/icons/svgs/arrow_down.svg",
                      //       width: 16.w,
                      //     ),
                      //     inputDecorationTheme: InputDecorationTheme(
                      //       fillColor: const Color(0xfff7f7f7),
                      //       filled: true,
                      //       isDense: true,
                      //       hintStyle: TextStyle(
                      //         fontWeight: FontWeight.w600,
                      //         fontSize: 16.sp,
                      //         color: const Color(0xff323232)
                      //             .withOpacity(.44),
                      //       ),
                      //       enabledBorder: OutlineInputBorder(
                      //           borderRadius:
                      //               BorderRadius.circular(20.r),
                      //           borderSide: BorderSide(
                      //               color: const Color(0xff39a7a7)
                      //                   .withOpacity(.29),
                      //               width: 1.5.w)),
                      //     ),
                      //     selectedTrailingIcon: SvgPicture.asset(
                      //       "assets/icons/svgs/arrow_up.svg",
                      //       width: 16.w,
                      //     ),
                      //     menuStyle: MenuStyle(
                      //         alignment: const Alignment(-1, 1.5),
                      //         backgroundColor:
                      //             const MaterialStatePropertyAll(
                      //                 Colors.white),
                      //         shape: MaterialStatePropertyAll(
                      //             RoundedRectangleBorder(
                      //                 borderRadius:
                      //                     BorderRadius.circular(
                      //                         20.r))))),
                      StatefulBuilder(
                        builder: (context, setState) => DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:  BorderRadius.all(
                                  Radius.circular(20.r),
                                ),
                                borderSide: BorderSide(
                                    color: const Color(0xff39a7a7).withOpacity(.29),width: 1.5.w
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.all(
                                  Radius.circular(20.r),
                                ),
                                borderSide: BorderSide(
                                    color: const Color(0xff39a7a7).withOpacity(.29),width: 1.5.w
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.all(
                                  Radius.circular(20.r),
                                ),
                                borderSide: BorderSide(
                                    color: const Color(0xff39a7a7).withOpacity(.29),width: 1.5.w
                                )
                            ),
                            filled: true,
                            isDense: true,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: const Color(0xff323232).withOpacity(.44),
                            ),
                            hintText: "Qualifications",
                            fillColor: const Color(0xfff7f7f7),),

                          items: items
                              .map((e) => DropdownMenuItem(
                              value: e, child: Text(e)))
                              .toList(),
                          onChanged: (val) {
                            selectedItem = val;
                            setState(() {});
                          },
                          // value: selectedItem,
                          isExpanded: true,
                          borderRadius: BorderRadius.circular(20.r),
                          dropdownColor: Colors.grey[200],
                          icon: SvgPicture.asset("assets/icons/svgs/arrow_down.svg",width: 16.w,),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      AppField(
                        labelText: "Experience year",
                        radius: 20,
                        height: 54,
                        isDense: true,
                        keyboardType: TextInputType.number,
                        controller: experienceController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Experience !!";
                          } else {
                            return null;
                          }
                        },
                      ),
                      AppField(
                        labelText: "Price of Session",
                        radius: 20,
                        height: 54,
                        keyboardType: TextInputType.number,
                        controller: priceController,
                        isDense: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Price of session !!";
                          } else {
                            return null;
                          }
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(const TimesOfWorkView());
                        },
                        child: AbsorbPointer(
                          child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            children: [
                              const AppField(
                                labelText: "Time of work",
                                radius: 20,
                                height: 54,
                                isDense: true,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 16.h, end: 16.w),
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h,),
                      AppFilledButton(
                        text: "Register",
                        radius: 15,
                        paddingBottom: 16,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) => Text("data"),
                            );
                          }
                        },
                      ),
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

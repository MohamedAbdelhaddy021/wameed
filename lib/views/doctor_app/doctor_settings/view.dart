import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/styles.dart';
import 'package:wameed/views/help_and_support/view.dart';
import 'package:wameed/views/language_setting/view.dart';

class DoctorSettingsView extends StatefulWidget {
  const DoctorSettingsView({super.key});

  @override
  State<DoctorSettingsView> createState() => _DoctorSettingsViewState();
}

class _DoctorSettingsViewState extends State<DoctorSettingsView> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Settings",
          style: TextStyles.poppins24BlackSemiBold,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24.w),
            child: Image.asset(
              "assets/images/app_main_logo.png",
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 31.h),
        child: Column(
          children: [
            _Item(
              headText: "Personal information",
              text: "Name",
              valueText: "Mohamed Abdelhady",
              controller: nameController,
            ),
            _Item(
                text: "Email",
                valueText: "Mohamed Abdelhady",
                controller: emailController),
            _Item(
              text: "Password",
              valueText: "***********",
              controller: passwordController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Row(
                children: [
                  Text("Help Center",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppins")),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                navigateTo(const HelpAndSupportView());
              },
              child: Container(
                width: double.infinity,
                height: 53.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2).withOpacity(.63),
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black.withOpacity(.25),
                      ),
                    ]),
                child: Row(
                  children: [
                    Text("FAQ",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "poppins",
                          color: Colors.black.withOpacity(.55),
                        )),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 22,
                      color: Colors.black.withOpacity(.35),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Text("Language",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins")),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () {
                navigateTo(const LanguageSettingView());
              },
              child: Container(
                width: double.infinity,
                height: 53.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2).withOpacity(.63),
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black.withOpacity(.25),
                      ),
                    ]),
                child: Row(
                  children: [
                    Text("English", style: TextStyles.poppins14Black55Medium),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 22,
                      color: Colors.black.withOpacity(.35),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({
    required this.text,
    required this.valueText,
    this.headText = "",
    this.controller,
  });

  final String text, valueText, headText;
  final TextEditingController? controller;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool isEnabled = false;
  late FocusNode myFocusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.headText,
              style: TextStyles.poppins16BlackSemiBold.copyWith(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  isEnabled = true;
                  myFocusNode = FocusNode();
                  myFocusNode.requestFocus();
                });
              },
              icon: Icon(
                Icons.edit,
                color: Colors.black.withOpacity(.45),
                size: 28.sp,
              ),
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 76.h,
          padding: EdgeInsetsDirectional.only(start: 16.w, top: 8.h),
          decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    offset: const Offset(0, 2),
                    blurStyle: BlurStyle.inner,
                    blurRadius: 4),
              ],
              borderRadius: BorderRadius.circular(15.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text,
                style: TextStyles.poppins14Black55Medium
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: Container(
                  height: 54.h,
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(bottom: 10.h),
                  child: isEnabled
                      ? TextFormField(
                          controller: widget.controller,
                          focusNode: myFocusNode,
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus!.unfocus();
                            isEnabled = false;
                            setState(() {});
                          },
                          onFieldSubmitted: (value) {
                            isEnabled = false;
                            setState(() {});
                          },
                          style: TextStyles.poppins14Black55Medium,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                          ),
                        )
                      : Text(
                          widget.valueText,
                          style: TextStyles.poppins14Black55Medium,
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_filled_button.dart';

import '../../core/design/arrow_back_button.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Help&Support",
          style: TextStyle(
            fontFamily: "poppins",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(end: 24.w),
              child: Container(
                width: 28.w,
                height: 28.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 2,
                          color: Colors.black.withOpacity(.25)),
                      BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 2,
                          color: Colors.black.withOpacity(.25)),
                    ]),
                child: Center(
                  child: Image.asset(
                    "assets/images/help_and_support_screen_logo.png",
                    width: 16.w,
                    height: 16.w,
                  ),
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 36.w, start: 24.w, end: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Objective",
                    style: TextStyle(
                      color: Colors.black.withOpacity(.57),
                      fontFamily: "poppins",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              const _Item(hintText: "the title"),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black.withOpacity(.57),
                      fontFamily: "poppins",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              const _Item(hintText: ""),
              SizedBox(
                height: 32.h,
              ),
              Row(
                children: [
                  Text(
                    "Problem",
                    style: TextStyle(
                      color: Colors.black.withOpacity(.57),
                      fontFamily: "poppins",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              const _Item(hintText: "",maxLines: 5,),
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              const AppFilledButton(text: "Submit"),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.hintText, this.maxLines=1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(2, 2),
                color: Colors.black.withOpacity(.25),
                blurRadius: 2),
          ]),
      child: TextFormField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              fontFamily: "poppins",
              color: Colors.black),
          fillColor: const Color(0xffF2F2F2).withOpacity(.63),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
      ),
    );
  }
}

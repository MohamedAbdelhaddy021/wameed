import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_filled_button.dart';
import '../../core/design/app_image.dart';

class BeforeScanView extends StatefulWidget {
  const BeforeScanView({super.key});

  @override
  State<BeforeScanView> createState() => _ScanViewState();
}

class _ScanViewState extends State<BeforeScanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsetsDirectional.only(start: 24.w, end: 24.w, bottom: 94.h),
          child: Column(children: [
            AppImage("face.png", height: 235.h, width: 161.w),
            SizedBox(height: 40.h),
            Text.rich(TextSpan(
              text: "Face",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp),
              children: [
                TextSpan(
                    text: " ID",
                    style: TextStyle(
                        color: Color(0xff39A7A7),
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp)),
              ],
            )),
            SizedBox(height: 24.h),
            Text(
                textAlign: TextAlign.center,
                "Face ID is a facial Recognition feature which detects person from his face expressions to know if he has depression or not.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    fontFamily: "poppins",
                    color: const Color(0xff39A7A7).withOpacity(.76))),
          ]),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 8,
            left: 45.w,
            right: 45.w),
        child: FilledButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                  padding: EdgeInsetsDirectional.symmetric(vertical: 100.h,horizontal: 32.w),
                  child: Row(
                        children: [
                          Expanded(child: AppButton(text: "Gallery", onPressed: (){})),
                          SizedBox(width: 24.h),
                          Expanded(child: AppButton(text: "Camera", onPressed: (){})),
                        ],
                      ),
                ));
          },
          style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              fixedSize: Size(double.infinity, 70.h)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold)),
              SizedBox(width: 17.w),
              AppImage("arrow_right.svg")
            ],
          ),
        ),
      ),
    );
  }
}

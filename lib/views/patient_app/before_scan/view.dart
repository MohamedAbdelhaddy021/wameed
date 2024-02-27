import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                padding: EdgeInsetsDirectional.only(
                    start: 24.w, end: 24.w, bottom: 94.h),
                child: Column(
                    children: [
                  Image.asset(
                    "assets/images/face.png",
                    height: 235.h,
                    width: 161.w,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text.rich(
                      TextSpan(
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
                                fontSize: 24.sp),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Face ID is a facial Recognition feature which detects person from his face expressions to know if he has depression or not.",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        fontFamily: "poppins",
                        color: const Color(0xff39A7A7).withOpacity(.76)),
                  ),
                ]),
              ),
            )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height/8,left: 45.w,right: 45.w),
        child: FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            minimumSize: Size(double.infinity, 70.h),
            maximumSize: Size(double.infinity, 70.h),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: 17.w,
              ),
               SvgPicture.asset("assets/icons/svgs/arrow_right.svg")
            ],
          ),
        ),
      ),
    );
  }
}

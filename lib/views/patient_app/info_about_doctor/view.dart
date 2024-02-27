import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/arrow_back_button.dart';

class InfoAboutDoctor extends StatelessWidget {
  const InfoAboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text.rich(
          TextSpan(
              style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600),
              text: "Appoin",
              children: [
                TextSpan(
                  text: "t",
                  style: TextStyle(
                      fontFamily: "courgette",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                ),
                const TextSpan(text: "ment")
              ]),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 247.h,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(.29),
                  borderRadius: BorderRadius.circular(28.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff39A7A7).withOpacity(.29),
                    ),
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(-2, -2),
                      spreadRadius: -5,
                      blurRadius: 15.0,
                    ),
                    BoxShadow(
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                      color: Theme.of(context).primaryColor.withOpacity(.83),
                    ),BoxShadow(
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                      color: Theme.of(context).primaryColor.withOpacity(.83),
                    ),

                  ]),
              child: Center(child: Image.asset("assets/images/doctor_bg.png",fit: BoxFit.contain,))
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Text(
                  "Dr. John Smith",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  "4.6",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffEBEF25),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 12.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Price:",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            fontFamily: "poppins"),
                      ),
                      Text(
                        " 500",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontFamily: "poppins"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Experience",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            fontFamily: "poppins"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "5 years",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontFamily: "poppins"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Qualifications",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            fontFamily: "poppins"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          """Education at the University of Northern Iowa.
He received his PhD in Educational Policy 
Studies from the University of Wisconsin-Madison in 1971.""",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.grey,
                            fontFamily: "poppins",
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Spacer(),
            FilledButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 54.h),
                maximumSize: Size(double.infinity, 54.h),
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    side: BorderSide(
                        color: Theme.of(context).primaryColor,
                        style: BorderStyle.solid,
                        width: 1.w)),
              ),
              child: Text(
                "Patient review",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 20.sp,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            AppFilledButton(text: "Book an appointment",radius: 15,onPressed: (){}),
          ],
        ),
      ),
    );
  }
}

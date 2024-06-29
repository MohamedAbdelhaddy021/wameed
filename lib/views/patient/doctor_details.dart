import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_back.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/app_image.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import 'book_appointment/view.dart';
import 'patient_reviews.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key, required this.name, required this.price, required this.details, required this.experience});
  final String name,details ;
  final int price,experience ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBack(),
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
                      color: AppTheme.primaryColor),
                ),
                const TextSpan(text: "ment")
              ]),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 247.h,
                decoration: BoxDecoration(
                    color: AppTheme.primaryColor.withOpacity(.29),
                    borderRadius: BorderRadius.circular(28.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff39A7A7).withOpacity(.29),
                      ),
                      BoxShadow(
                          color: Colors.white70,
                          offset: Offset(-2, -2),
                          spreadRadius: -5,
                          blurRadius: 15.0),
                      BoxShadow(
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer,
                          color: AppTheme.primaryColor.withOpacity(.83)),
                      BoxShadow(
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer,
                          color: AppTheme.primaryColor.withOpacity(.83)),
                    ]),
                child: Center(
                    child: AppImage("doctor_bg.png", fit: BoxFit.contain))),
            SizedBox(height: 24.h),
            Row(
              children: [
                Text(
                  name,
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  "4.6",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 4.w),
                const Icon(Icons.star, color: Colors.amber, size: 20),
              ],
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 12.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Price:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: "poppins")),
                      Text(" $price EGP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Colors.grey,
                              fontFamily: "poppins")),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Text("Experience",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: "poppins")),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Text("$experience years",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Colors.grey,
                              fontFamily: "poppins")),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Text("Qualifications",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              fontFamily: "poppins")),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                              details,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Colors.grey,
                                fontFamily: "poppins",
                              ))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 12),
            OutlinedButton(
              onPressed: () {
                navigateTo(PatientReviewView());
              },
              child: Text(
                "Patient review",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 20.sp,
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 60.h),
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
              ),
            ),
            SizedBox(height: 24.h),
            AppButton(
                text: "Book an appointment",
                onPressed: () {
                  navigateTo(BookAppointmentView(name: name,));
                }),
          ],
        ),
      ),
    );
  }
}

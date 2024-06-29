import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../views/patient/doctor_details.dart';
import '../logic/helper_methods.dart';
import '../utils/app_theme.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem(
      {super.key,
      required this.name,
      required this.price,
      required this.qualification,
      required this.experience});

  final String name;
  final int price;
  final String qualification;
  final int experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.h,
      padding: EdgeInsetsDirectional.only(
          start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: const Color(0xffF9F9F9),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(2, 2)),
          ]),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 36.w,
                backgroundColor: AppTheme.primaryColor.withOpacity(.29),
                backgroundImage: AssetImage(
                    "assets/images/doctor_logo.png"),
              )
            ],
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    children: [
                      Text(name,
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600)),
                      const Spacer(),
                      const Text("4.6"),
                      SizedBox(width: 4.w),
                      const Icon(Icons.star, size: 20, color: Colors.amber)
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Text(qualification,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        fontSize: 12.sp,
                        color: Colors.black.withOpacity(.56))),
                const Spacer(),
                OutlinedButton(
                    onPressed: () {
                      navigateTo(DoctorDetailsView(
                        name: name,
                        price: price,
                        experience: experience,
                        details: qualification,
                      ));
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(127.w, 38.h),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        )),
                    child: Text("Book now",
                        style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.w600)))
              ],
            ),
          )
        ],
      ),
    );
  }
}

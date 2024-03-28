import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/custom_app_bar.dart';

import '../../core/design/doctor_item.dart';

class AllDoctorsView extends StatefulWidget {
  const AllDoctorsView({super.key});

  @override
  State<AllDoctorsView> createState() => _DoctorState();
}

class _DoctorState extends State<AllDoctorsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(title: "Doctors"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 28.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Text("All Doctors",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp)),
          ),
          Expanded(
            child: ListView.separated(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                itemBuilder: (context, index) => DoctorItem(),
                separatorBuilder: (context, index) => SizedBox(height: 24.h),
                itemCount: 5),
          ),
        ],
      ),
    );
  }
}

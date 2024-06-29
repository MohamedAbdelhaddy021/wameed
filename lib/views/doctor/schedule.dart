import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_image.dart';
import '../../core/design/custom_app_bar.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';
import '../mutual/patient_info.dart';

class DoctorScheduleView extends StatefulWidget {
  const DoctorScheduleView({super.key});

  @override
  State<DoctorScheduleView> createState() => _DoctorScheduleViewState();
}

class _DoctorScheduleViewState extends State<DoctorScheduleView> {
  List<String> names = [
    "Mohamed Abdelhady",
    "Ali Ahmed",
    "Kareem Mohamed",
    "Radwa Fathy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "My schedule"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 24.w),
          child: Text(
            "Consultation",
            style: TextStyles.inter20BlackSemiBold
                .copyWith(color: Colors.black.withOpacity(.58)),
          ),
        ),
        SizedBox(height: 24.h),
        Expanded(
          child: ListView.separated(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
                bottom: 24.h,
              ),
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    navigateTo(PatientInfoView(name: names[index]));
                  },
                  child: _Item(patientName: names[index],index: index,)),
              separatorBuilder: (context, index) => SizedBox(height: 24.h),
              itemCount: names.length),
        ),
      ]),
    );
  }
}

class _Item extends StatelessWidget {
  _Item({required this.patientName, required this.index});

  final String patientName;
  final int index;
  List<String> time = [
    "2:00 - 2:30",
    "8:00 - 8:30",
    "4:00 - 4:15",
    "5:00 - 5:30",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: double.infinity,
      padding: EdgeInsetsDirectional.only(end: 16.w),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        boxShadow: [
          BoxShadow(
              offset: const Offset(2, 2),
              blurRadius: 4,
              color: Colors.black.withOpacity(.25)),
        ],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Container(
            width: 64.w,
            height: 64.w,
            margin: EdgeInsetsDirectional.only(start: 24.w),
            decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(.22),
                shape: BoxShape.circle),
            child:
                Center(child: AppImage("user.png", width: 29.w, height: 29.w)),
          ),
          SizedBox(width: 16.w),
          Expanded(
              child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(patientName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    )),
                Text(
                  "Anexity patient",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.56),
                      fontFamily: "poppins"),
                ),
                Text(
                  "Consultation",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.56),
                      fontFamily: "poppins"),
                ),
                Text(
                  "From ${time[index]} Pm",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.56),
                      fontFamily: "poppins"),
                ),
              ],
            ),
          )),
          const Icon(Icons.arrow_forward_ios_outlined,
              weight: 2, color: Colors.grey),
        ],
      ),
    );
  }
}

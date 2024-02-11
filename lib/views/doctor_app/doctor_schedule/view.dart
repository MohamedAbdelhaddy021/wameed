import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/custom_app_bar.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/styles.dart';
import '../patient_information/view.dart';

class DoctorScheduleView extends StatefulWidget {
  const DoctorScheduleView({super.key});

  @override
  State<DoctorScheduleView> createState() => _DoctorScheduleViewState();
}

class _DoctorScheduleViewState extends State<DoctorScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: "My schedule"),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 36.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24.w),
              child: Text(
                "New consultation",
                style: TextStyles.inter20BlackSemiBold.copyWith(
                  color: Colors.black.withOpacity(.58),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding:
                      EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h,top: 24.h),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      navigateTo(const PatientInformationView());
                    },
                      child: _Item(patientName: "Mohamed Abdelhady")),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 24.h,
                      ),
                  itemCount: 5),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24.w),
              child: Text(
                "Old consultation",
                style: TextStyles.inter20BlackSemiBold.copyWith(
                  color: Colors.black.withOpacity(.58),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.only(left:24.w,right: 24.w,bottom: 24.h),
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      navigateTo(const PatientInformationView());
                    },
                      child: _Item(patientName: "Mohamed Abdelhady")),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 24.h,
                      ),
                  itemCount: 5),
            ),
        ])),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.patientName});

  final String patientName;

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
            margin: EdgeInsetsDirectional.only(
              start: 24.w,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(.22),
                shape: BoxShape.circle),
            child: Center(
                child: Image.asset(
              "assets/images/user.png",
              width: 29.w,
              height: 29.w,
            )),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  patientName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
                  "From 2:00 - 2:30 Pm",
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
          const Icon(
            Icons.arrow_forward_ios_outlined,
            weight: 4,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/theming/styles.dart';

import '../../../core/design/custom_app_bar.dart';

class PatientInformationView extends StatefulWidget {
  const PatientInformationView({super.key});

  @override
  State<PatientInformationView> createState() => _PatientInformationViewState();
}

class _PatientInformationViewState extends State<PatientInformationView> {
  List<String> list = [
    "poor concentration",
    "feelings of excessive guilt or low self-worth",
    "hopelessness about the future",
    "thoughts about dying or suicide",
    "disrupted sleep",
    "changes in appetite or weight",
    "feeling very tired or low in energy.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: "Patient info"),
      body: Padding(
        padding: EdgeInsetsDirectional.only(
            top: 32.h, start: 24.w, end: 24.w, bottom: 47.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyles.inter20BlackSemiBold,
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.w),
                child: Row(
                  children: [
                    Text(
                      "Name : ",
                      style: TextStyles.inter20BlackSemiBold,
                    ),
                    Text(
                      "Mohamed Abdelhady",
                      style: TextStyles.inter16Medium.copyWith(
                          color: Colors.black.withOpacity(.57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.w),
                child: Row(
                  children: [
                    Text(
                      "Age : ",
                      style: TextStyles.inter20BlackSemiBold,
                    ),
                    Text(
                      "35",
                      style: TextStyles.inter16Medium.copyWith(
                          color: Colors.black.withOpacity(.57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.w),
                child: Row(
                  children: [
                    Text(
                      "Gender : ",
                      style: TextStyles.inter20BlackSemiBold,
                    ),
                    Text(
                      "Male",
                      style: TextStyles.inter16Medium.copyWith(
                          color: Colors.black.withOpacity(.57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.w),
                child: Row(
                  children: [
                    Text(
                      "Disease : ",
                      style: TextStyles.inter20BlackSemiBold,
                    ),
                    Text(
                      "Depression",
                      style: TextStyles.inter16Medium.copyWith(
                          color: Colors.black.withOpacity(.57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                "History",
                style: TextStyles.inter20BlackSemiBold,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Last consultation",
                style:
                    TextStyles.inter20BlackSemiBold.copyWith(fontSize: 18.sp),
              ),
              SizedBox(
                height: 24.h,
              ),
              ...List.generate(list.length, (index) => Padding(
                padding:  EdgeInsetsDirectional.only(bottom: 12.h,start: 8.w),
                child: Row(
                  children: [
                    const CircleAvatar(radius: 2.5,backgroundColor: Colors.grey,),
                    SizedBox(width: 8.w,),
                    Text(
                      list[index],
                      maxLines: 1,
                      style: TextStyles.inter20BlackSemiBold.copyWith(
                          color: Colors.grey, fontSize: 12.sp),
                    )
                  ],
                ),
              )),
              Padding(
                padding: EdgeInsets.only(top: 24.w),
                child: Row(
                  children: [
                    Text(
                      "New appointment : ",
                      style: TextStyles.inter20BlackSemiBold,
                    ),
                    Text(
                      "from 2:00-2:30 pm",
                      style: TextStyles.inter16Medium.copyWith(
                          color: Colors.black.withOpacity(.57),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xffD9D9D9).withOpacity(.56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                child: SizedBox(
                  height: 60.h,
                  child: Row(
                    children: [
                      Text(
                        "Report",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

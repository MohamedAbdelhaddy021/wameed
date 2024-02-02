import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/design/custome_app_bar.dart';

import '../../core/theming/styles.dart';

class DoctorReportView extends StatefulWidget {
  const DoctorReportView({super.key});

  @override
  State<DoctorReportView> createState() => _DoctorReportViewState();
}

class _DoctorReportViewState extends State<DoctorReportView> {
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
      appBar: const CustomAppBar(appBarTitle: "Report"),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
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
                  "24",
                  style: TextStyles.inter16Medium.copyWith(
                      color: Colors.black.withOpacity(.57),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h,),
          Text(
            "Diagnosis of his state",
            style: TextStyles.inter20BlackSemiBold,
          ),
          SizedBox(height: 16.h,),
          Text(
            "Anxity ( Depression )",
            style: TextStyles.inter16Medium.copyWith(color: Colors.black.withOpacity(.46),fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 32.h,),
          Text(
            "Description :",
            style: TextStyles.inter20BlackSemiBold,
          ),
          SizedBox(height: 16.h,),
          ...List.generate(list.length, (index) => Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              children: [
                Text(
                  list[index],
                  maxLines: 1,
                  style: TextStyles.inter20BlackSemiBold.copyWith(
                      color: Colors.grey, fontSize: 12.sp),
                )
              ],
            ),
          )),
          SizedBox(height: MediaQuery.of(context).size.height/5,),
          AppFilledButton(text: "Save", onPressed: (){}),
        ],
      ),
    );
  }
}

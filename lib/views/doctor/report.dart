import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/custom_app_bar.dart';
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
      appBar: const CustomAppBar(title: "Report"),
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
          SizedBox(
            height: 24.h,
          ),
          Text(
            "Diagnosis of his state",
            style: TextStyles.inter20BlackSemiBold,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "Anxity ( Depression )",
            style: TextStyles.inter16Medium.copyWith(
                color: Colors.black.withOpacity(.46),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Description :",
            style: TextStyles.inter20BlackSemiBold,
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 47.w),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(2, 2),
                      color: Colors.black.withOpacity(.15),
                      blurRadius: 2),
                  BoxShadow(
                      offset: const Offset(2, 2),
                      color: Colors.black.withOpacity(.15),
                      blurRadius: 2),
                ]),
            child: TextFormField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus!.unfocus();
              },
              maxLines: 6,
              decoration: InputDecoration(
                filled: true,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  fontFamily: "poppins",
                  color: Colors.black,
                ),
                fillColor: const Color(0xffD9D9D9).withOpacity(.25),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          AppButton(text: "Save", onPressed: () {}),
        ],
      ),
    );
  }
}

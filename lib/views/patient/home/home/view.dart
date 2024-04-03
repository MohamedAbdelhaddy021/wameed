import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/doctor_item.dart';
import '../../../../core/logic/helper_methods.dart';
import '../../../../core/theming/app_theme.dart';
import '../../all_doctors.dart';
import '../../library.dart';
import '../../questionnaire.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 32.w,
        title: Text.rich(
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins"),
            TextSpan(text: "Wa", children: [
              TextSpan(
                  text: "M",
                  style: TextStyle(
                      fontFamily: "courgette",
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp)),
              const TextSpan(text: "ee"),
              TextSpan(
                  text: "d",
                  style: TextStyle(
                      fontFamily: "courgette",
                      fontWeight: FontWeight.w500,
                      fontSize: 32.sp))
            ])),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              heightFactor: 1.5.h,
              child: Text("All services",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black.withOpacity(.70),
                      fontWeight: FontWeight.w600)),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(children: [
                Expanded(
                    child: _Item(
                        title: "Community", icon: Icons.groups, onTap: () {})),
                Expanded(
                    child: _Item(
                        title: "Questions",
                        icon: Icons.question_mark,
                        onTap: () {
                          navigateTo(QuestionnaireView());
                        })),
                Expanded(
                  child: _Item(
                      title: "Library",
                      icon: Icons.library_books,
                      onTap: () {
                        navigateTo(LibraryView());
                      }),
                ),
              ])),
          Padding(
            padding:
                EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 24.h),
            child: Row(
              children: [
                Text("Top doctors",
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.w600)),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      navigateTo(AllDoctorsView());
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: const Color(0xff000000).withOpacity(.40),
                          decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            itemBuilder: (context, index) => DoctorItem(),
            separatorBuilder: (context, index) => SizedBox(height: 24.h),
            itemCount: 2,
          )),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.title, required this.icon, this.onTap});

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 16.w),
        decoration: BoxDecoration(
            color: const Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(20.r)),
        height: 116.h,
        width: 116.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(size: 26.sp, icon, color: AppTheme.primaryColor),
            SizedBox(height: 8.h),
            Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppTheme.primaryColor)),
          ],
        ),
      ),
    );
  }
}

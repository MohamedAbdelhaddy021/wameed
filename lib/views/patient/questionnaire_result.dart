import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_filled_button.dart';
import '../../core/design/app_image.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';
import 'home/view.dart';

class QuestionnaireResultView extends StatelessWidget {
  const QuestionnaireResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: AppButton(
            text: "Done",
            onPressed: () {
              navigateTo(HomeView(), removeHistory: true);
            },
            paddingBottom: MediaQuery.of(context).size.height / 6),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(
            top: 158.h, start: 74.w, end: 74.w, bottom: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage("check_icon_in_circle.png", width: 127.w, height: 130.h),
            SizedBox(height: 24.h),
            Text("your submitting",
                style: TextStyles.inter16Medium.copyWith(fontSize: 14.sp)),
            Text("Successfully !",
                style: TextStyles.inter16Medium
                    .copyWith(fontSize: 18.sp, color: AppTheme.primaryColor)),
            SizedBox(height: 48.h),
            Text("This person has depression.",
                style: TextStyles.inter16Medium),
            SizedBox(height: 32.h),
            Text(
                'The individual might have a drooping or tense posture, which can also affect the muscles in their face, leading to a downcast or strained expression.',
                style: TextStyles.inter20BlackSemiBold
                    .copyWith(color: Colors.grey, fontSize: 12.sp)),
          ],
        ),
      ),
    );
  }
}

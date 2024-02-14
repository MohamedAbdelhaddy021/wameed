import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/theming/styles.dart';

class QuestionnaireResultView extends StatelessWidget {
  const QuestionnaireResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AppFilledButton(
        text: "Done",
        onPressed: () {},
        paddingBottom: 64.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(
          top: 158.h,
          start: 74.w,
          end: 74.w,
          bottom: 24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/check_icon_in_circle.png",
              width: 127.w,
              height: 130.h,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "your submitting",
              style: TextStyles.inter16Medium.copyWith(
                fontSize: 14.sp,
              ),
            ),
            Text(
              "Successfully !",
              style: TextStyles.inter16Medium.copyWith(
                fontSize: 18.sp,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Text("This person has depression.",
                style: TextStyles.inter16Medium),
            SizedBox(
              height: 32.h,
            ),
            Text(
              '''The individual might have a drooping or tense 
                posture, which can also affect the muscles in
                their face, leading to a downcast or strained
                expression.''',
              style: TextStyles.inter20BlackSemiBold.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

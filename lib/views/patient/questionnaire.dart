import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design/app_back.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/app_image.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';
import 'questionnaire_result.dart';

class QuestionnaireView extends StatefulWidget {
  const QuestionnaireView({super.key});

  @override
  State<QuestionnaireView> createState() => _QuestionnaireViewState();
}

class _QuestionnaireViewState extends State<QuestionnaireView> {
  int currentIndex = 0;
  late List<String> questions;
  double _progress = 0;

  @override
  void initState() {
    questions = List.generate(
        5,
        (index) =>
            "Have you experienced changes in your abilityto form and maintain friendship ?");
    super.initState();
    _progress = 1 / questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBack(),
        titleSpacing: 0,
        title: Text.rich(
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "poppins"),
          TextSpan(
            text: "Ques",
            children: [
              TextSpan(
                text: "t",
                style: TextStyle(
                    fontFamily: "courgette",
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp),
              ),
              const TextSpan(
                text: "ionnaire",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 48.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 73.w),
              child: Text(
                _progress == 1 / questions.length
                    ? "Let’s Start..."
                    : currentIndex == questions.length - 1
                        ? "Let’s end"
                        : "Continue",
                style: TextStyles.poppins18Black69SemiBold.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h, bottom: 48.h),
              child: LinearProgressIndicator(
                value: _progress,
                backgroundColor: Colors.grey[300],
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppTheme.primaryColor),
              ),
            ),
            Text(
              questions[currentIndex],
              style: TextStyles.poppins16BlackSemiBold
                  .copyWith(color: Colors.black.withOpacity(.78)),
            ),
            SizedBox(
              height: 48.h,
            ),
            _Item(
                text: "Yes",
                onPressed: () {
                  setState(() {
                    if (_progress < 1.0) {
                      _progress += 1.0 / questions.length;
                      print(_progress);
                      currentIndex += 1;
                    }
                  });
                }),
            SizedBox(
              height: 24.h,
            ),
            _Item(
                text: "No",
                onPressed: () {
                  setState(() {
                    if (_progress < 1.0) {
                      _progress += 1.0 / questions.length;
                      print(_progress);
                      currentIndex += 1;
                    }
                  });
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            if (questions.length - 1 == currentIndex)
              AppButton(
                text: "Submit",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Dialog(
                        elevation: 100,
                        child: Container(
                          width: 295.w,
                          padding: EdgeInsetsDirectional.only(
                              top: 33.w, bottom: 47.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CupertinoActivityIndicator(
                                  radius: 40.r,
                                  animating: true,
                                  color: AppTheme.primaryColor),
                              SizedBox(
                                height: 24.h,
                              ),
                              Text(
                                "Submitting Done",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 12.sp,
                                  color: Colors.black.withOpacity(.67),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "Successfully",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 18.sp,
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                "Waiting the Result.......",
                                style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 16.sp,
                                  color: Colors.black.withOpacity(.39),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 40.h),
                              InkWell(
                                onTap: () {
                                  navigateTo(const QuestionnaireResultView());
                                },
                                child: Container(
                                  height: 60.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 32.w),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.60),
                                        ),
                                        const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(1, 1),
                                          blurRadius: 8.0,
                                        ),
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.60),
                                        ),
                                        const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-1, -1),
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(
                                          color: AppTheme.primaryColor,
                                          width: 1.w)),
                                  child: Center(
                                    child: Text(
                                      "Show the Result",
                                      style: TextStyles.poppins24BlackSemiBold
                                          .copyWith(
                                        color: AppTheme.primaryColor,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
          ],
        ),
      ),
      floatingActionButton: questions.length - 1 == currentIndex
          ? null
          : DecoratedBox(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  blurStyle: BlurStyle.outer,
                  color: const Color(0xff39A7A7).withOpacity(.33),
                ),
                BoxShadow(
                  blurRadius: 8,
                  blurStyle: BlurStyle.outer,
                  color: const Color(0xff39A7A7).withOpacity(.33),
                ),
              ]),
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppTheme.primaryColor,
                shape: const CircleBorder(),
                child: AppImage("questionnaire_floating_arrow_forward.svg"),
              ),
            ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 54.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: "poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

enum Gender {
  firstQuestion,
  continueQuestions,
  lastQuestion,
}

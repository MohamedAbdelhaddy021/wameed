import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_back.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';

class MotivzonePage extends StatefulWidget {
  const MotivzonePage({super.key});

  @override
  State<MotivzonePage> createState() => _MotivzonePageState();
}

class _MotivzonePageState extends State<MotivzonePage> {
  final List<String> quotes = [
    "Every person has the ability to achieve something great.",
    "Differences are beauty, so be proud of being unique.",
    "A different mind makes a difference.",
    "Don't be ashamed of yourself, you are enough.",
    "Hope is the key to every closed door.",
    "Everyone has their own way to success.",
    "Creativity begins when we look at things from a different angle.",
    "Strength comes from within, just discover it.",
    "Acceptance is the first step towards happiness.",
    "The road to success is full of challenges, but you can overcome them.",
    "Self-confidence is the secret to excellence.",
    "Nothing is impossible when you believe in yourself.",
    "Smiling is a universal language understood by everyone.",
    "Failure is just an opportunity for a better start.",
    "Life doesn't need to be perfect to be beautiful.",
    "You have the strength to overcome all difficulties.",
    "Learn from challenges to become stronger and better.",
    "Big dreams start with small steps.",
    "Every moment is a new opportunity for growth and development.",
    "Optimism is the belief that leads to success.",
    "Positivity makes a difference in your life and the lives around you.",
    "You are not alone, there is always someone supporting and encouraging you.",
    "Success is not measured by status, but by determination and perseverance.",
    "Be proud of yourself and all you have achieved so far.",
    "Happiness begins from within, always stay positive.",
    "You can achieve the impossible when you believe in yourself.",
    "Do what you can, with what you have, where you are.",
    "Victory is not in never falling, but in rising every time we fall.",
    "Learning is the path to personal growth.",
    "Be bold enough to be different.",
    "Faith accomplishes the impossible.",
    "Perseverance is the key to success.",
    "Everyone has a unique and special story.",
    "Success is the result of continuous effort.",
    "Change starts from within.",
    "Don't let anyone diminish your worth.",
    "Self-confidence opens doors to success.",
    "Always be the best version of yourself.",
    "Don't wait for opportunity, create it yourself.",
    "Enjoy the journey no matter the challenges.",
    "Hope is the light that guides us in darkness.",
    "Success is believing in your abilities.",
    "Hard work always pays off.",
    "Challenges make champions.",
    "Every day is a new opportunity for success.",
    "Confidence opens doors to success.",
    "Every obstacle is an opportunity to learn.",
    "Creativity knows no bounds.",
    "Dreaming is the beginning of success.",
    "Courage is continuing despite fear.",
    "Success starts with determination.",
    "Don't compare yourself to others, just be yourself.",
    "Persistence is the secret to success.",
    "Happiness comes from within.",
    "Optimism opens close"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBack(),
        centerTitle: false,
        title: Text.rich(
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "poppins"),
          TextSpan(
            text: "Mo",
            style: TextStyles.poppins24BlackSemiBold,
            children: [
              TextSpan(
                  text: "T",
                  style: TextStyle(
                      fontFamily: "courgette",
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp)),
              TextSpan(text: "ivZone", style: TextStyles.poppins24BlackSemiBold)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 350.h,
              padding: EdgeInsetsDirectional.only(
                  start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff39a7a7).withOpacity(.40),
                        blurRadius: 8.r,
                        offset: const Offset(3, 4)),
                    BoxShadow(
                        color: const Color(0xff39A7A7).withOpacity(.60),
                        blurRadius: 8,
                        offset: const Offset(-2, -2)),
                    BoxShadow(
                        color: const Color(0xff39A7A7).withOpacity(.60),
                        blurRadius: 8,
                        offset: const Offset(2, 2)),
                  ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 106.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppTheme.primaryColor.withOpacity(.35),
                        ),
                        child: Center(
                          child: Text("Motivation",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "poppins")),
                        )),
                  ],
                ),
                SizedBox(height: 56.h),
                SizedBox(height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_new,
                            size: 22, color: Colors.black.withOpacity(.19)),
                        onPressed: () {
                          if (index > 0) {
                            index -= 1;
                          }
                          setState(() {});
                        },
                      ),
                      Expanded(
                        child: Text(
                          quotes[index],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "poppins",
                              color: AppTheme.primaryColor),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios,
                            size: 22, color: Colors.black.withOpacity(.19)),
                        onPressed: () {
                          if (index < quotes.length - 1) {
                            index += 1;
                            print(index);
                          }
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 16.w)
                    ],
                  ),
                ),
                // Spacer(),z
                // Text("- Carolyn Costin",
                //     style: TextStyle(
                //         fontSize: 14.sp,
                //         fontWeight: FontWeight.w600,
                //         fontFamily: "poppins",
                //         color: AppTheme.primaryColor)),
              ]),
            ),
            SizedBox(height: 104.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_double_arrow_right,
                    size: 26, color: Colors.black.withOpacity(.4)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text("Swipe Left & right For next",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          color: AppTheme.primaryColor)),
                ),
                Icon(Icons.keyboard_double_arrow_left,
                    size: 26, color: Colors.black.withOpacity(.4))
              ],
            )
          ],
        ),
      ),
    );
  }
}

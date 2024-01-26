import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueView extends StatelessWidget {
  const ContinueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380.w,
                height: 580.h,
                padding: EdgeInsets.only(top: 40.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, -3),
                          blurRadius: 4,
                          spreadRadius: 3,
                          color: Colors.black.withOpacity(.20),
                      ),
                      BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 3,
                          color: Colors.black.withOpacity(.20))
                    ]),
                child: Column(
                  children: [
                    Text(
                      "Continue As...",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "inter",
                        fontSize: 32.sp,
                      ),
                    ),
                    SizedBox(
                      height: 38.h,
                    ),
                    const _Item(
                        text: "Patient", img: "assets/icons/user_ico.png"),
                    SizedBox(
                      height: 32.h,
                    ),
                    const _Item(
                        text: "Doctor", img: "assets/icons/doctor_ico.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.text, required this.img});

  final String text, img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176.w,
      height: 176.w,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              color: Colors.black.withOpacity(.25),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(img),
            width: 84.w,
            height: 84.w,
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: "inter",
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.3),
          ),
        ],
      ),
    );
  }
}

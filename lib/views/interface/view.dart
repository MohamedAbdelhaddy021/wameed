import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/text_logo.dart';

class InterfaceView extends StatelessWidget {
  const InterfaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 65.h),
          child: Column(
            children: [
              const TextLogo(),
              Text(
                "Mental care app",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 400.h,
                width: 326.w,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/girl_interface_bg.png"),
                  ),
                  color: const Color(0xffBFDFDF).withOpacity(.24),
                  borderRadius: BorderRadius.circular(67.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffBFDFDF).withOpacity(.40),
                      offset: const Offset(0, 0),
                      blurRadius: 10.7,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 74.h,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    minimumSize: Size(274.w, 86.h),
                    maximumSize: Size(274.w, 86.h),
                    backgroundColor: Theme.of(context).primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 17.w,
                    ),
                    SvgPicture.asset(
                      "assets/icons/svgs/arrow_right.svg",
                      width: 24.w,
                      height: 12.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({super.key, required this.text, this.fontFamily="inter", this.radius=10, this.height=54});

  final String text,fontFamily;
  final double radius,height;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius.r)
          ),
          minimumSize: Size(380.w, height.h),
          maximumSize: Size(380.w, height.h),
          backgroundColor: Theme.of(context).primaryColor,
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          fontFamily: fontFamily
            ),
      ),
    );
  }
}

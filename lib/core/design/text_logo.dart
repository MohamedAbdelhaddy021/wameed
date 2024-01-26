import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: TextStyle(
          fontSize: 48.sp, fontWeight: FontWeight.w600, fontFamily: "poppins"),
      TextSpan(
        text: "Wa",
        children: [
          TextSpan(
            text: "M",
            style: TextStyle(
                fontFamily: "satisfy",
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 48.sp),
          ),
          const TextSpan(text: "ee"),
          TextSpan(
            text: "d",
            style: TextStyle(
              fontFamily: "courgette",
              fontWeight: FontWeight.w500,
              fontSize: 48.sp,
            ),
          ),
        ],
      ),
    );
  }
}

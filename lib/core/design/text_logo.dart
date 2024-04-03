import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_theme.dart';

class TextLogo extends StatelessWidget {
  final bool withDesc;

  const TextLogo({super.key, this.withDesc = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          style: TextStyle(
              fontSize: 46.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "poppins"),
          TextSpan(
            text: "Wa",
            children: [
              TextSpan(
                  text: "M",
                  style: TextStyle(
                      fontFamily: "courgette",
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 46.sp)),
              const TextSpan(text: "ee"),
              TextSpan(
                  text: "d",
                  style: TextStyle(
                      fontFamily: "courgette",
                      fontWeight: FontWeight.w500,
                      fontSize: 46.sp)),
            ],
          ),
        ),
        if (withDesc)
          Text("mental health care",
              style: TextStyle(
                  fontSize: 28.sp,
                  color: AppTheme.primaryColor.withOpacity(.57),
                  fontFamily: "satisfy")),
      ],
    );
  }
}

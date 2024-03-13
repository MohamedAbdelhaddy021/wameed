import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.text,
      this.fontFamily = "inter",
      required this.onPressed,
      this.paddingBottom = 0});

  final String text, fontFamily;
  final double paddingBottom;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom),
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
            disabledBackgroundColor: AppTheme.primaryColor.withOpacity(.46),
            disabledForegroundColor: Colors.white),
        child: Text(text,
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                fontFamily: fontFamily)),
      ),
    );
  }
}

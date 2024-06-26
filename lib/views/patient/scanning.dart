import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_image.dart';
import 'package:wameed/core/utils/app_theme.dart';

class ScanningView extends StatelessWidget {
  const ScanningView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppImage("faceScanBg.png", fit: BoxFit.cover),
            Container(color: Colors.black.withOpacity(.3)),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 3.7),
              child: AppImage("frame.png",
                  width: 370.w, height: 470.h, color: AppTheme.primaryColor),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: Text(
                "60 % \n Wait Scanning ......",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({super.key, required this.imgPath,this.onTap});
  final String imgPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160.w,
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(width: 1.3.w,color: const Color(0xff686868).withOpacity(.15))
        ),
        child: Center(child: AppImage(imgPath,width: 24.w,height: 24.w,)),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(width: 1.3.w,color: const Color(0xff686868).withOpacity(.15))
      ),
      child: Center(child: Image(image: AssetImage(imgPath),width: 24.w,height: 24.w,)),
    );
  }
}
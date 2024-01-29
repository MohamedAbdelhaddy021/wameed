import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key, required this.buttonText, required this.text, this.subText="Done", this.onTap});
  final String buttonText,text,subText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 403.h,
        width: 295.w,
        padding: EdgeInsetsDirectional.only(top: 56.w, bottom: 45.h),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          children: [
            Image.asset(
              "assets/images/check_icon_in_circle.png",
              width: 89.w,
              height: 89.w,
            ),
            SizedBox(
              height: 48.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 20.sp,
                color: Colors.black.withOpacity(.48),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subText,
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 20.sp,
                color: const Color(0xff7AC4C4),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 60.h,
              margin: EdgeInsets.symmetric(horizontal: 32.w),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(.60),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 1),
                      blurRadius: 8.0,
                    ),
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(.60),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-1, -1),
                      blurRadius: 8.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1.w
                  )
              ),
              child: Center(
                child: GestureDetector(
                  onTap: onTap,
                  child: Text(
                    buttonText,
                    style: TextStyles.poppins24BlackSemiBold.copyWith(
                        color: Theme.of(context).primaryColor, fontSize: 18.sp),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
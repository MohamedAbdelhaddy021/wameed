import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/logic/helper_methods.dart';
import '../../upload_voda_recipet.dart';

class VodafonePayItem extends StatelessWidget {
  const VodafonePayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 24.h),
      Text("Payment steps",
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: "poppins",
              fontWeight: FontWeight.w600)),
      Padding(
          padding: EdgeInsetsDirectional.only(top: 16.h, bottom: 16.h),
          child: Text(
            "1-Transfer the amount to this number :",
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "poppins",
                fontWeight: FontWeight.w600,
                color: const Color(0xff000000).withOpacity(.51)),
          )),
      Container(
          height: 49.h,
          width: 204.w,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color(0xffD9D9D9).withOpacity(.38)),
              color: const Color(0xffD9D9D9).withOpacity(.38),
              borderRadius: BorderRadius.circular(12.r)),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                start: 17.h, bottom: 14.h, top: 14.h),
            child: Text(
              "+543  654  876",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "poppins",
                  color: const Color(0xff000000).withOpacity(.53)),
            ),
          )),
      Padding(
        padding: EdgeInsetsDirectional.only(top: 32.h, bottom: 16.h),
        child: Text(
          "2-Upload the receipt image to confirm\n your payment :",
          style: TextStyle(
              fontSize: 14.sp,
              fontFamily: "poppins",
              fontWeight: FontWeight.w600,
              color: const Color(0xff000000).withOpacity(.51)),
        ),
      ),
      Container(
        height: 54.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9).withOpacity(.48),
            borderRadius: BorderRadius.circular(15.r)),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 14.h, bottom: 14.h, start: 17.w),
                child: Text("upload the receipt",
                    style: TextStyle(
                        fontFamily: "poppins",
                        color: const Color(0xff000000).withOpacity(.51),
                        fontWeight: FontWeight.w500))),
            const Spacer(),
            IconButton(
              onPressed: () {
                navigateTo(VodafoneUploadView());
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 22,
              ),
              color: const Color(0xff000000).withOpacity(.60),
            )
          ],
        ),
      ),
    ]);
  }
}

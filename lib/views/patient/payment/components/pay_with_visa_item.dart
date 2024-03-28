import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_dialog.dart';
import '../../../../core/design/app_filled_button.dart';
import '../../../../core/design/app_input.dart';

class VisaPayItem extends StatelessWidget {
  const VisaPayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Full Name",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.48),
                  fontSize: 16.sp)),
          SizedBox(height: 16.h),
          AppInput(
              labelText: "",
              prefixIcon: Icon(Icons.person),
              bottomPadding: 0,
              height: 16.h),
          SizedBox(height: 24.h),
          Text("Card number",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.48),
                  fontSize: 16.sp)),
          SizedBox(height: 16.h),
          AppInput(
              labelText: "",
              isPrefix: true,
              prefixImgPath: "mastercard.png",
              height: 16.h),
          SizedBox(height: 16.h),
          SizedBox(
            height: 120.h,
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CVV",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'poppins',
                            color: Colors.black.withOpacity(.48))),
                    SizedBox(height: 12.h),
                    AppInput(labelText: "",height: 10.h,),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ex",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins',
                          color: Colors.black.withOpacity(.48)),
                    ),
                    SizedBox(height: 12.h),
                    AppInput(labelText: "",height: 10.h,),
                  ],
                ),
              ),
              Spacer(flex: 2)
            ]),
          ),
          SizedBox(height: 32.h),
          AppButton(
              text: "Confirm",
              fontFamily: "poppins",
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AppDialog(
                          buttonText: "Back To set it",
                          subText: "successfully",
                          text: "Your Booking",
                          onTap: () {
                            Navigator.pop(context);
                          });
                    });
              }),
        ],
      ),
    );
  }
}

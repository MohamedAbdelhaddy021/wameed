import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/styles.dart';
import '../../../core/design/app_filled_button.dart';

class OTPVerificationCodeView extends StatefulWidget {
  const OTPVerificationCodeView({super.key});

  @override
  State<OTPVerificationCodeView> createState() => _LoginViewState();
}

class _LoginViewState extends State<OTPVerificationCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 28.w),
          onPressed: () {},
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verification",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Please enter the code sent on your\nemail address!",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "poppins",
                  fontSize: 14.sp,
                  color: Colors.black.withOpacity(.40),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              PinCodeTextField(
                appContext: context,
                length: 4,
                textStyle: TextStyles.poppins24BlackSemiBold,
                keyboardType: TextInputType.number,
                cursorColor: const Color(0xff39A7A7).withOpacity(.88),
                cursorHeight: 25.h,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(6.r),
                  fieldHeight: 55.h,
                  fieldWidth: 71.h,
                  inactiveColor: const Color(0xffBFDFDF),
                  selectedColor: const Color(0xff39A7A7),
                  activeColor:   const Color(0xffBFDFDF),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Clear all",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "poppins",
                        ),
                      )),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Please enter full code",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "poppins",
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.40),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              AppFilledButton(
                text: "Verify",
                height: 67,
                fontFamily: "poppins",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/design/app_filled_button.dart';
import '../../../core/design/custom_app_bar.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/utils/styles.dart';
import 'change_password.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key, required this.email});

  final String email;

  @override
  State<OTPView> createState() => _LoginViewState();
}

class _LoginViewState extends State<OTPView> {
  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  final pinFieldsController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Verification",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp)),
              SizedBox(height: 16.h),
              Text(
                "Please enter the code sent on your\nemail address!",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "poppins",
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.40)),
              ),
              SizedBox(height: 44.h),
              Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: PinCodeTextField(
                    controller: pinFieldsController,
                    appContext: context,
                    length: 4,
                    validator: (val) {
                      if (val!.length < 4 || val.isEmpty) {
                        errorController!.add(ErrorAnimationType.shake);
                        return "";
                      } else {
                        return null;
                      }
                    },
                    onCompleted: (value) {
                      currentText = value;
                    },
                    animationType: AnimationType.fade,
                    errorAnimationController: errorController,
                    textStyle: TextStyles.poppins24BlackSemiBold,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp((r'[0-9]')))
                    ],
                    cursorColor: const Color(0xff39A7A7).withOpacity(.88),
                    cursorHeight: 25.h,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    backgroundColor: Colors.transparent,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(6.r),
                        fieldHeight: 55.h,
                        fieldWidth: 71.h,
                        errorBorderColor: const Color(0xffBFDFDF),
                        inactiveColor: const Color(0xffBFDFDF),
                        selectedColor: const Color(0xff39A7A7),
                        activeColor: const Color(0xffBFDFDF)),
                  )),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        pinFieldsController.clear();
                      },
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
                child: Text("Please enter full code",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(.40))),
              ),
              SizedBox(height: 40.h),
              AppButton(
                text: "Verify",
                fontFamily: "poppins",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(ChangePasswordView(email: widget.email,));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_dialog.dart';
import 'package:wameed/core/design/arrow_back_button.dart';
import 'package:wameed/core/theming/styles.dart';

import '../../../core/design/app_field.dart';
import '../../../core/design/app_filled_button.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Password",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "create your new password to log in!",
                style: TextStyles.poppins14Black55Medium.copyWith(
                    color: Colors.black.withOpacity(.44), fontFamily: "inter"),
              ),
              SizedBox(
                height: 44.h,
              ),
              const AppField(
                labelText: "Password",
                isPassword: true,
                bottomPadding: 24,
              ),
              const AppField(
                labelText: "Confirm password",
                isPassword: true,
                bottomPadding: 48,
              ),
              AppFilledButton(
                text: "set password",
                height: 67,
                fontFamily: "poppins",
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AppDialog(
                          buttonText: "Back to Log in",
                          text: "your reset",
                          onTap: () {},
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

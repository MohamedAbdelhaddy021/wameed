

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_dialog.dart';
import '../../../../core/design/app_field.dart';
import '../../../../core/design/app_filled_button.dart';
import '../../../../core/design/arrow_back_button.dart';
import '../../../../core/theming/styles.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ResetPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Password",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "create your new password to log in!",
                  style: TextStyles.poppins14Black55Medium.copyWith(
                      color: Colors.black.withOpacity(.44),
                      fontFamily: "inter"),
                ),
                SizedBox(
                  height: 44.h,
                ),
                AppField(
                  labelText: "Password",
                  isPassword: true,
                  bottomPadding: 24,
                  height: 67,
                  controller: passwordController,
                  validator: (pass) {
                    if (pass!.isEmpty) {
                      return "enter a new password";
                    } else if (pass.length < 8) {
                      return "password must be 8 or more characters ";
                    } else {
                      return null;
                    }
                  },
                ),
                AppField(
                  height: 67,
                    labelText: "Confirm password",
                    isPassword: true,
                    bottomPadding: 48,
                    validator: (pass) {
                      if (pass!.isEmpty) {
                        return "enter the password again";
                      } else if ( passwordController.text!=pass) {
                        return "password is not identical ";
                      } else {
                        return null;
                      }
                    }),
                AppFilledButton(
                  text: "set password",
                  fontFamily: "poppins",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AppDialog(
                            buttonText: "Back to Log in",
                            text: "your reset",
                            onTap: () {},
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

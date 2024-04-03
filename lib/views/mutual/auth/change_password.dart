import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/app_dialog.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/custom_app_bar.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/theming/styles.dart';
import 'login.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ChangePasswordView> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Password",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
                ),
                SizedBox(height: 16.h),
                Text(
                  "create your new password to log in!",
                  style: TextStyles.poppins14Black55Medium.copyWith(
                      color: Colors.black.withOpacity(.44),
                      fontFamily: "inter"),
                ),
                SizedBox(height: 44.h),
                AppInput(
                  labelText: "Password",
                  isPassword: true,
                  bottomPadding: 24,
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
                AppInput(
                    labelText: "Confirm password",
                    isPassword: true,
                    bottomPadding: 48,
                    validator: (pass) {
                      if (pass!.isEmpty) {
                        return "enter the password again";
                      } else if (passwordController.text != pass) {
                        return "password is not identical ";
                      } else {
                        return null;
                      }
                    }),
                AppButton(
                  text: "set password",
                  fontFamily: "poppins",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AppDialog(
                            buttonText: "Back to Log in",
                            text: "your reset",
                            onTap: () {
                              navigateTo(LoginView(), removeHistory: true);
                            },
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
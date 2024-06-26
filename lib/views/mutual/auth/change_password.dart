import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/app_dialog.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/custom_app_bar.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/utils/styles.dart';
import '../../../features/cubits/auth/change_password.dart';
import 'login.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key, required this.email});

  final String email;

  @override
  State<ChangePasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ChangePasswordView> {
  late ChangePasswordCubit bloc;
  @override
  void initState() {
    bloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 72.h),
        child: Form(
          key: bloc.formKey,
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
                  controller: bloc.passwordController,
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
                      } else if (bloc.passwordController.text != pass) {
                        return "password is not identical ";
                      } else {
                        return null;
                      }
                    }),
                AppButton(
                  text: "set password",
                  fontFamily: "poppins",
                  onPressed: () {
                    if (bloc.formKey.currentState!.validate()) {
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

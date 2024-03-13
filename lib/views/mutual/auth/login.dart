import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/text_logo.dart';
import '../../../core/logic/helper_methods.dart';
import '../../patient/home/view.dart';
import 'components/have_accout_or_not.dart';
import 'forget_password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController =
      TextEditingController(text: "mohamedabdelhady021@gmail.com");
  final passwordController = TextEditingController(text: "Blanco666");

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(left: 24.w, right: 24.w, bottom: 10.h, top: 60.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Welcome To",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "poppins",
                  ),
                ),
                const TextLogo(withDesc: false),
                SizedBox(height: 30.h),
                AppInput(
                  labelText: "Enter your email",
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter an email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                AppInput(
                  labelText: "Password",
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter your password";
                    } else if (value.length < 8) {
                      return "password must have 8 or more characters";
                    } else {
                      return null;
                    }
                  },
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: TextButton(
                    onPressed: () {
                      navigateTo(const ForgetPasswordView());
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.black.withOpacity(.67),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 36.h),
                AppButton(
                  text: "Log In",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      navigateTo(const HomeView(), removeHistory: true);
                    }
                  },
                ),
                HaveAccountOrNot(isFromLogin: true)
              ],
            ),
          ),
        ),
      )),
    );
  }
}

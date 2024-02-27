import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/patient_app/auth/forget_password/view.dart';

import '../../../../core/design/app_field.dart';
import '../../../../core/design/app_filled_button.dart';
import '../../../../core/design/register_button.dart';
import '../../../../core/design/text_logo.dart';
import '../../../../core/logic/helper_methods.dart';
import '../../home/view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, this.fromDocRegister = false});

  final bool fromDocRegister;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController =
      TextEditingController(text: "mohamedabdelhady021@gmail.com");
  final passwordController = TextEditingController(text: "Blanco666");

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            size: 28.w,
            color: Colors.black.withOpacity(.7),
          ),
          onPressed: () {},
        ),
      ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, bottom: 10.h, top: 18.h),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Welcome To",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins",
                      ),
                    ),
                    const TextLogo(),
                    SizedBox(
                      height: 30.h,
                    ),
                    AppField(
                      labelText: "Enter your email",
                      height: 67,
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
                    AppField(
                      labelText: "Password",
                      height: 67,
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
                    SizedBox(
                      height: 50.h,
                    ),
                    AppFilledButton(
                      text: "Log In",
                      height: 67,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          navigateTo(const HomeView(), removeHistory: true);
                        }
                      },
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          endIndent: 10.w,
                          thickness: 1.5.h,
                        )),
                        Text(
                          "Or Log in with",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                            child: Divider(
                          indent: 10.w,
                          thickness: 1.5.h,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const RegistrationButton(
                          imgPath: "assets/icons/facebook_logo.png",
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        const RegistrationButton(
                          imgPath: "assets/icons/google_logo.png",
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account ?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xff86C9C9)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/features/cubits/auth/sendOTP.dart';

import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/custom_app_bar.dart';
import '../../../core/logic/helper_methods.dart';
import 'otp.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<ForgetPasswordView> {
  late OTPCubit bloc;
  @override
  void initState() {
    bloc=BlocProvider.of(context);
    super.initState();

  }
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

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
              Text(
                "Forgot Password?",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
              ),
              SizedBox(height: 24.h),
              Text("Please enter your email address!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.40),
                  )),
              SizedBox(height: 44.h),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: AppInput(
                  labelText: "Enter your email",
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter your email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 40.h),
              BlocBuilder(
                bloc: bloc,
                builder: (context, state) =>  AppButton(
                  text: "Send Code",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      bloc.sendCode();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/custom_app_bar.dart';
import 'package:wameed/core/logic/cache_helper.dart';
import 'package:wameed/features/states/auth/login.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/text_logo.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/logic/input_validator.dart';
import '../../../features/cubits/auth/login.dart';
import '../../patient/home/view.dart';
import 'components/have_account_or_not.dart';
import 'forget_password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginCubit bloc;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    bloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Welcome To",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "poppins")),
                const TextLogo(withDesc: false),
                SizedBox(height: 30.h),
                AppInput(
                  labelText: "Enter your email",
                  controller: bloc.emailController,
                  validator: InputValidator.email,
                ),
                SizedBox(height: 16.h),
                AppInput(
                    labelText: "Password",
                    isPassword: true,
                    bottomPadding: 12,
                    controller: bloc.passwordController,
                    validator: InputValidator.password),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                      onPressed: () {
                        navigateTo(const ForgetPasswordView());
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black.withOpacity(.67)),
                      )),
                ),
                SizedBox(height: 24.h),
                BlocBuilder(
                    bloc: bloc,
                    builder: (context, state) {

                      if(state is LoginLoadingState){
                        return CircularProgressIndicator();
                      }
                      else{
                        return AppButton(
                          text: "Log In",
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              print(bloc.emailController);
                              print(bloc.passwordController);
                              bloc.logIn(
                                  CacheHelper.isDoctor ? "doc-auth/login" : "auth/login");
                            }
                          },
                        );

                      }
                    }),
                HaveAccountOrNot(isFromLogin: true)
              ],
            ),
          ),
        ),
      )),
    );
  }


  @override
  void dispose() {
    bloc.emailController.clear();
    bloc.passwordController.clear();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/features/cubits/auth/register.dart';
import 'package:wameed/features/states/auth/register.dart';

import '../../../core/design/app_back.dart';
import '../../../core/design/app_drop_down.dart';
import '../../../core/design/app_image.dart';
import '../../../core/design/app_input.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/logic/input_validator.dart';
import '../../../core/utils/app_theme.dart';
import '../../../core/utils/styles.dart';
import '../../doctor/time_of_work.dart';
import 'components/have_account_or_not.dart';

class RegisterView extends StatefulWidget {
  final bool isDoctor;

  const RegisterView({super.key, required this.isDoctor});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late RegisterCubit bloc;

  @override
  void initState() {
    bloc = BlocProvider.of(context);
    super.initState();
  }

  List<String> qualifications = ["item 1", "item 2", "item 3", "item 4"];
  List<String> genders = ["Male", "Female"];
  String? selectedItem = "item 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBack(),
        title: Text.rich(TextSpan(
            style: TextStyles.poppins24BlackSemiBold,
            text: "Regis",
            children: [
              TextSpan(
                  text: "t", style: TextStyles.courgette24TurquoiseRegular),
              const TextSpan(text: "ration")
            ])),
      ),
      body: Form(
        key: bloc.formKey,
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.only(
              start: 19.w, end: 29.w, bottom: 16.h, top: 24.h),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.40),
                    ),
                  ),
                  Text.rich(
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins"),
                    TextSpan(
                      text: " Wa",
                      children: [
                        TextSpan(
                            text: "m ",
                            style: TextStyle(
                                fontFamily: "satisfy",
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 25.sp)),
                        const TextSpan(text: "ee"),
                        TextSpan(
                          text: "d",
                          style: TextStyle(
                            fontFamily: "courgette",
                            fontWeight: FontWeight.w400,
                            fontSize: 22.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              AppInput(
                labelText: "Username",
                controller: bloc.nameController,
              ),
              AppInput(
                labelText: "Email",
                controller: bloc.emailController,
              ),
              Row(
                children: [
                  Expanded(
                      child: AppDropDown(
                          list: ["Male", "Female"], hint: "Gender")),
                  SizedBox(width: 16.w),
                  if (!widget.isDoctor)
                    Expanded(child: AppInput(labelText: "Age")),
                  if (widget.isDoctor)
                    Expanded(
                        child: AppInput(labelText: "Qualifications",controller: bloc.qualificationsController,)),
                ],
              ),
              AppInput(
                labelText: "Password",
                isPassword: true,
                controller: bloc.passController,
              ),
              AppInput(
                labelText: "Confirm password",
                isPassword: true,
                validator: (value) {
                  if (value != bloc.passController.text) {
                    return "Password is not identical";
                  }
                  return null;
                },
              ),
              if (widget.isDoctor)
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 5.w),
                  child: Column(
                    children: [
                      AppInput(
                        labelText: "National ID",
                        keyboardType: TextInputType.number,
                        controller: bloc.nationalIDController,
                      ),
                      AppInput(
                          labelText: "Vodafone cash number",
                          keyboardType: TextInputType.number,
                          controller: bloc.vodafoneNumController,
                          prefixIcon: AppImage("vodafone_cash_logo.svg",
                              width: 22.w, height: 22.w)),
                      Row(
                        children: [
                          Expanded(
                              child: AppInput(
                            labelText: "Experience year",
                            keyboardType: TextInputType.number,
                                controller: bloc.experianceYearsController,
                          )),
                          SizedBox(width: 16.w),
                          Expanded(
                              child: AppInput(
                            labelText: "Price of Session",
                            keyboardType: TextInputType.number,
                                controller: bloc.priceController,
                          )),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(const TimesOfWorkView());
                        },
                        child: AbsorbPointer(
                          child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            children: [
                              const AppInput(
                                labelText: "Time of work",
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    bottom: 16.h, end: 16.w),
                                child: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.grey,
                                    size: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(height: 16.h),
              BlocBuilder(
                bloc: bloc,
                builder: (context, state) {
                  if(state is RegisterLoadingState){
                    return CircularProgressIndicator();
                  }else{
                    return AppButton(
                      text: "Register",
                      onPressed: () {
                        widget.isDoctor ? bloc.signUPDoctor() : bloc.signUP();
                      },
                    );
                  }
                }
              ),
              HaveAccountOrNot(isFromLogin: false,)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.emailController.clear();
    bloc.passController.clear();
    bloc.qualificationsController.clear();
    bloc.nationalIDController.clear();
    bloc.vodafoneNumController.clear();
    bloc.nameController.clear();
    super.dispose();
  }
}

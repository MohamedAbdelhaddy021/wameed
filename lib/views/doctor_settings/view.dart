import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/arrow_back_button.dart';

class DoctorSettingsView extends StatefulWidget {
  const DoctorSettingsView({super.key});

  @override
  State<DoctorSettingsView> createState() => _DoctorSettingsViewState();
}

class _DoctorSettingsViewState extends State<DoctorSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ArrowBackButton(),
        title: Text(
          "Settings",
          style: TextStyle(
            fontFamily: "poppins",
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24.w),
            child: SvgPicture.asset(
              "assets/icons/svgs/app_logo.svg",
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, end: 24.w, top: 31.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Item(title: "Personal information", onPressed: () {}),
              SizedBox(
                height: 28.h,
              ),
              const _EditFiled(
                mainText: "Name",
                valueText: "Ahmed Mohamed",
              ),
              SizedBox(
                height: 22.h,
              ),
              _Item(title: "Email", onPressed: () {}),
              SizedBox(
                height: 18.h,
              ),
              const _EditFiled(
                mainText: "Email",
                valueText: "ahmed_23@gmail.com",
              ),
              SizedBox(
                height: 38.h,
              ),
              _Item(title: "Password", onPressed: () {}),
              SizedBox(
                height: 18.h,
              ),
              const _EditFiled(
                mainText: "Password",
                valueText: "**********",
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text("Help Center",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppins")),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: double.infinity,
                height: 53.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2).withOpacity(.63),
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          blurStyle: BlurStyle.outer,
                          color: Colors.black.withOpacity(.25)),
                    ]),
                child: Row(
                  children: [
                    Text("FAQ",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins",
                            color: Colors.black.withOpacity(.55))),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 22,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text("Language",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "poppins")),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: double.infinity,
                height: 53.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2).withOpacity(.63),
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          blurStyle: BlurStyle.outer,
                          color: Colors.black.withOpacity(.25)),
                    ]),
                child: Row(
                  children: [
                    Text("English",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins",
                            color: Colors.black.withOpacity(.55))),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 22,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key, required this.title, this.onPressed});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              fontFamily: "poppins"),
        ),
        const Spacer(),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.edit,
              color: Colors.black.withOpacity(.42),
              size: 26,
            ))
      ],
    );
  }
}

class _EditFiled extends StatelessWidget {
  const _EditFiled(
      {super.key, required this.valueText, required this.mainText});

  final String valueText, mainText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 18.w),
      width: double.infinity,
      height: 76.h,
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2).withOpacity(.63),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(.25)),
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 2,
                blurStyle: BlurStyle.outer,
                color: Colors.black.withOpacity(.20)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            mainText,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "poppins",
            ),
          ),
          // SizedBox(
          //   height: 8.h,
          // ),
          Text(
            valueText,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "poppins",
              color: Colors.black.withOpacity(.40),
            ),
          ),
        ],
      ),
    );
  }
}

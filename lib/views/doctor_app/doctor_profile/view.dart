import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/custom_app_bar.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/styles.dart';
import 'package:wameed/views/auth/login/view.dart';

import '../doctor_chats/view.dart';
import '../doctor_schedule/view.dart';
import '../doctor_settings/view.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: "Profile"),
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 147.h,
              padding: EdgeInsetsDirectional.only(start: 24.w),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(.29),
                borderRadius: BorderRadius.circular(28.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff39A7A7).withOpacity(.29),
                  ),
                  const BoxShadow(
                    color: Colors.white70,
                    offset: Offset(-2, -2),
                    spreadRadius: -5,
                    blurRadius: 8.0,
                  ),
                  BoxShadow(
                    color: const Color(0xff39A7A7).withOpacity(.29),
                  ),
                  const BoxShadow(
                    color: Colors.white70,
                    spreadRadius: -1,
                    blurRadius: 8.0,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(
                      blurRadius: 11,
                      color: Colors.black.withOpacity(.42),
                      blurStyle: BlurStyle.outer),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 84.w,
                    height: 84.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.network(
                      "https://kid-z.de/wp-content/uploads/2016/10/img8-1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 18.w, top: 49.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. john smith",
                          style: TextStyles.inter16Medium
                              .copyWith(fontSize: 14.sp),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "Drjohn_23@gmail.com",
                              style: TextStyles.inter16Medium.copyWith(
                                  color: Colors.black.withOpacity(.56),
                                  fontSize: 14.sp),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            _Item(
              imgPath: "assets/icons/calendar.png",
              title: "My schedule",
              onPressed: () {
                navigateTo(const DoctorScheduleView());
              },
            ),
            _Item(
              imgPath: "assets/icons/message.png",
              title: "My Chats",
              onPressed: () {
                navigateTo(const DoctorChatsView());
              },
            ),
            _Item(
              imgPath: "assets/icons/bill.png",
              title: "Reservation receipts",
              onPressed: () {},
            ),
            _Item(
              imgPath: "assets/icons/setting.png",
              title: "Setting",
              onPressed: () {
                navigateTo(const DoctorSettingsView());
              },
            ),
            _Item(
              imgPath: "assets/icons/logout.png",
              title: "Log out",
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.imgPath, required this.title, this.onPressed});

  final String imgPath, title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 54.h,
        padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
        margin: EdgeInsetsDirectional.only(bottom: 24.w),
        decoration: BoxDecoration(
          color: const Color(0xffF2F2F2).withOpacity(.63),
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: const Color(0xffBFDFDF), width: 1.w),
        ),
        child: Row(
          children: [
            Image.asset(
              imgPath,
              width: 22.w,
              height: 22.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              title,
              style: TextStyles.poppins14Black55Medium
                  .copyWith(color: Colors.black.withOpacity(.40)),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black.withOpacity(.50),
              size: 22.sp,
            )
          ],
        ),
      ),
    );
  }
}

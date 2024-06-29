import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wameed/features/cubits/auth/logout.dart';
import 'package:wameed/features/cubits/auth/profile.dart';
import '../../core/design/app_image.dart';
import '../../core/design/custom_app_bar.dart';
import '../../core/logic/cache_helper.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';
import '../mutual/settings.dart';
import 'chats.dart';
import 'schedule.dart';

class DoctorProfileView extends StatefulWidget {
  const DoctorProfileView({super.key});

  @override
  State<DoctorProfileView> createState() => _DoctorProfileViewState();
}

class _DoctorProfileViewState extends State<DoctorProfileView> {
   LogoutCubit? bloc;
   ProfileCubit? cubit;
  @override
  void initState() {
    bloc=BlocProvider.of(context);
    cubit=BlocProvider.of(context)..getUserData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Profile",
        withLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.w),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 147.h,
              padding: EdgeInsetsDirectional.only(start: 24.w),
              decoration: BoxDecoration(
                  color: AppTheme.primaryColor.withOpacity(.29),
                  borderRadius: BorderRadius.circular(28.r),
                  boxShadow: [
                    BoxShadow(color: const Color(0xff39A7A7).withOpacity(.29)),
                    const BoxShadow(
                        color: Colors.white70,
                        offset: Offset(-2, -2),
                        spreadRadius: -5,
                        blurRadius: 8.0),
                    BoxShadow(
                      color: const Color(0xff39A7A7).withOpacity(.29),
                    ),
                    const BoxShadow(
                        color: Colors.white70,
                        spreadRadius: -1,
                        blurRadius: 8.0,
                        offset: Offset(2, 2)),
                    BoxShadow(
                        blurRadius: 11,
                        color: Colors.black.withOpacity(.42),
                        blurStyle: BlurStyle.outer)
                  ]),
              child: Row(children: [

                  Container(
                  width: 80.w,
                  height: 90.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blueGrey),
                  child: CacheHelper.profileImage == null
                      ? AppImage(
                      "doctor_logo.png",
                      fit: BoxFit.cover)
                      : Image.file(
                    File(CacheHelper.profileImage!),
                    fit: BoxFit.cover,
                  )),
                BlocBuilder(
                  bloc: cubit,
                  builder: (context, state) => Expanded(
                      child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 18.w, top: 49.h, end: 16.w),
                    child: cubit?.doctorData==null?Shimmer(child: Container(width: 100,height: 40,), gradient: LinearGradient(colors: [Colors.grey,Colors.blue])):Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cubit?.doctorData!.name??"",
                              style: TextStyles.inter16Medium
                                  .copyWith(fontSize: 18.sp)),
                          SizedBox(height: 12.h),
                          Row(children: [
                            const Icon(Icons.email_outlined, color: Colors.white),
                            SizedBox(width: 8.w),
                            Expanded(
                                child: Text(cubit?.doctorData!.email??"",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyles.inter16Medium.copyWith(
                                      color: Colors.black.withOpacity(.56),
                                      fontSize: 14.sp,
                                    )))
                          ])
                        ]),
                  )),
                )
              ]),
            ),
            SizedBox(height: 24.h),
            _Item(
                onTap: () {
                  navigateTo(DoctorScheduleView());
                },
                imgPath: "calendar.png",
                title: "My schedule"),
            _Item(
                onTap: () {
                  navigateTo(DoctorChatsView());
                },
                imgPath: "message.png",
                title: "My Chats"),
            _Item(
                onTap: () {
                  navigateTo(DoctorScheduleView());
                },
                imgPath: "bill.png",
                title: "Reservation receipts"),
            _Item(
                onTap: () {
                  navigateTo(SettingsView());
                },
                imgPath: "setting.png",
                title: "Setting"),
            BlocBuilder(
              bloc: bloc,
                builder: (context, state) => _Item(
                    onTap: () {
                      bloc?.logOut("doc-auth");

                    }, imgPath: "logout.png", title: "Log out")),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.imgPath, required this.title, this.onTap});

  final String imgPath, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
            AppImage(imgPath, width: 22.w, height: 22.w),
            SizedBox(width: 8.w),
            Text(
              title,
              style: TextStyles.poppins14Black55Medium
                  .copyWith(color: Colors.black.withOpacity(.40)),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.black.withOpacity(.50), size: 22.sp)
          ],
        ),
      ),
    );
  }
}

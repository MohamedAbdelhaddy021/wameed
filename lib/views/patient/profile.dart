import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wameed/features/cubits/auth/profile.dart';

import '../../core/design/app_image.dart';
import '../../core/design/custom_app_bar.dart';
import '../../core/logic/helper_methods.dart';
import '../../core/utils/app_theme.dart';
import '../../core/utils/styles.dart';
import '../../features/cubits/auth/logout.dart';
import '../mutual/patient_info.dart';
import '../mutual/settings.dart';
import 'payment/view.dart';

class PatientProfilePage extends StatefulWidget {
  const PatientProfilePage({super.key});

  @override
  State<PatientProfilePage> createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  late LogoutCubit bloc;
  late ProfileCubit cubit;

  @override
  void initState() {
    bloc = BlocProvider.of(context);
    cubit = BlocProvider.of(context)..getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.w),
        child: BlocBuilder(
          bloc: cubit,
          builder: (context, state) => Column(
            children: [
              Container(
                width: double.infinity,
                height: 147.h,
                padding: EdgeInsetsDirectional.only(start: 24.w),
                decoration: BoxDecoration(
                    color: AppTheme.primaryColor.withOpacity(.29),
                    borderRadius: BorderRadius.circular(28.r),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff39A7A7).withOpacity(.29)),
                      const BoxShadow(
                          color: Colors.white70,
                          offset: Offset(-2, -2),
                          spreadRadius: -5,
                          blurRadius: 8.0),
                      BoxShadow(
                          color: const Color(0xff39A7A7).withOpacity(.29)),
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
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                          width: 84.w,
                          height: 84.w,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                              child: AppImage(
                            "user.png",
                            fit: BoxFit.cover,
                            width: 40,
                          ))),
                      GestureDetector(
                          onTap: () async {
                            var file = await ImagePicker.platform
                                .getImageFromSource(
                                    source: ImageSource.gallery);
                            if (file != null) {
                              // await StoreData().uploadImageToStorage(File(file.path));
                              setState(() {});
                            }
                          },
                          child: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.edit, size: 18.sp),
                          ))
                    ],
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 18.w, top: 49.h, end: 16.w),
                    child: cubit.profileData == null
                        ? CircularProgressIndicator()
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(cubit.profileData!.name,
                                    style: TextStyles.inter16Medium
                                        .copyWith(fontSize: 16.sp)),
                                SizedBox(height: 12.h),
                                Row(children: [
                                  const Icon(Icons.email_outlined,
                                      color: Colors.white),
                                  SizedBox(width: 8.w),
                                  Expanded(
                                      child: Text(cubit.profileData!.email,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyles.inter16Medium
                                              .copyWith(
                                                  color: Colors.black
                                                      .withOpacity(.56),
                                                  fontSize: 14.sp)))
                                ])
                              ]),
                  ))
                ]),
              ),
              SizedBox(height: 36.h),
              _Item(
                  imgPath: "wallet.png",
                  title: "Payment",
                  onPressed: () {
                    navigateTo(PaymentView());
                  }),
              _Item(
                  imgPath: "document.png",
                  title: "Document",
                  onPressed: () {
                    navigateTo(PatientInfoView());
                  }),
              _Item(
                  imgPath: "setting.png",
                  title: "Setting",
                  onPressed: () {
                    navigateTo(SettingsView());
                  }),
              BlocBuilder(
                  bloc: bloc,
                  builder: (context, state) => _Item(
                      imgPath: "logout.png",
                      title: "Log out",
                      onPressed: () {
                        bloc.logOut("auth");
                      })),
            ],
          ),
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
            AppImage(imgPath, width: 22.w, height: 22.w),
            SizedBox(width: 8.w),
            Text(title,
                style: TextStyles.poppins14Black55Medium.copyWith(
                  color: Colors.black.withOpacity(.40),
                )),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.black.withOpacity(.50), size: 22.sp)
          ],
        ),
      ),
    );
  }
}

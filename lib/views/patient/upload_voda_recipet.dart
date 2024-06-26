import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/design/app_dialog.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/app_image.dart';
import '../../core/design/custom_app_bar.dart';
import '../../core/utils/styles.dart';

class VodafoneUploadView extends StatefulWidget {
  const VodafoneUploadView({super.key});

  @override
  State<VodafoneUploadView> createState() => _VodafoneView2State();
}

class _VodafoneView2State extends State<VodafoneUploadView> {
  bool isImageUploaded = false;
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Upload image"),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(top: 40.h, start: 24.w, end: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff000000)),
                    color: const Color(0xffEAF5F5).withOpacity(.56),
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 16.w,
                      vertical: isImageUploaded ? 22.h : 16.h),
                  child: isImageUploaded
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (imagePath != null)
                              Image.file(File(imagePath!),
                                  width: 60.w, height: 60.w, fit: BoxFit.cover),
                            SizedBox(width: 12.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ahmed.png",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "poppins",
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 6.h),
                                Text("Upload successfully",
                                    style: TextStyles.poppins14Black55Medium
                                        .copyWith(
                                            color:
                                                Colors.black.withOpacity(.37))),
                              ],
                            ),
                          ],
                        )
                      : GestureDetector(
                          onTap: () async {
                            var file = await ImagePicker.platform
                                .getImageFromSource(source: ImageSource.camera);
                            if (file != null) {
                              imagePath = file.path;
                              isImageUploaded = true;
                              setState(() {});
                            }
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppImage("image_before_upload.png",
                                    height: 30.h, width: 46.w),
                                SizedBox(height: 5.h),
                                Text("Upload the receipt..",
                                    style: TextStyles.poppins16BlackSemiBold
                                        .copyWith(color: Colors.black)),
                                Text("be careful it’s clear",
                                    style: TextStyles.poppins14Black55Medium)
                              ]),
                        ),
                )),
            SizedBox(height: 78.h),
            Text("Phone number",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000).withOpacity(.73))),
            SizedBox(height: 18.h),
            Container(
              height: 64.h,
              width: double.infinity,
              alignment: AlignmentDirectional.centerStart,
              padding: EdgeInsetsDirectional.only(start: 24.w),
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9).withOpacity(.30),
                  borderRadius: BorderRadius.circular(15.r)),
              child: Text("01098603578",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    fontFamily: "poppins",
                    color: Colors.black.withOpacity(.38),
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3),
            AppButton(
                text: "Send Receipt",
                onPressed: isImageUploaded
                    ? () {
                        showDialog(
                          context: context,
                          builder: (context) => AppDialog(
                              text: "Your receipt send",
                              buttonText: "Back to confirm",
                              onTap: () {}),
                        );
                      }
                    : null),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';
import 'app_back.dart';
import 'app_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool withActions,withLeading;
  final String title;

  const CustomAppBar({super.key,  this.title="", this.withActions = false,  this.withLeading=true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: withLeading?const AppBack():null,
      title: Text(title),
      actions: [
        if(withActions)
        Padding(
            padding: EdgeInsetsDirectional.only(end: 24.w),
            child: Container(
              width: 28.w,
              height: 28.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 2,
                        color: Colors.black.withOpacity(.25)),
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 2,
                        color: Colors.black.withOpacity(.15)),
                  ]),
              child: Center(
                child: AppImage(
                  "help_and_support_screen_logo.png",
                  width: 16.w,
                  height: 16.w,
                ),
              ),
            )),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}

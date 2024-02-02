import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';
import 'arrow_back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle});

  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const ArrowBackButton(),
      elevation: 0.0,
      title: Text(
        appBarTitle,
        style: TextStyles.poppins24BlackSemiBold,
      ),
      actions: [
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
                child: Image.asset(
                  "assets/images/help_and_support_screen_logo.png",
                  width: 16.w,
                  height: 16.w,
                ),
              ),
            )),
      ],
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(60.h);

}

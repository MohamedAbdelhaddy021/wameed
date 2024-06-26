import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_back.dart';
import '../../core/design/app_image.dart';
import '../../core/utils/app_theme.dart';

class ChatCallView extends StatefulWidget {
  const ChatCallView({super.key});

  @override
  State<ChatCallView> createState() => _ChatCallViewState();
}

class _ChatCallViewState extends State<ChatCallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: AppBack()),
      body: Container(
        alignment: AlignmentDirectional.bottomEnd,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://yandex-images.clstorage.net/5m4WR1i17/7915b4sK/aNppijYZSHdNF77iOQFRsziBMn2GJhkrUN3j5fcFNj8SXww7CY1sm-QBP-AYoZP4Imyli8hfZaRk2_e-gmCqqwjraY4C3XxG6IKq093lkcOowMbMUqYdWpX9UpRCALK_Mt_pOx9ry4xjIv1DWlaBKuaZoFudm_QEYb5BOEPgHN3oGeqY9PgaQwxHDrY4QkLQKUAErAQnjSqEjVLSUAHjyLEpLO8dG3vcwmKuwmjl0QiVm0BZL5jz99Lf0fom4t6P-LmKC-U4eQIvds0UCiMhYZhShQ931S8olwzxwQOwEWvQGg4MnPoLLCAj_XIJtJKrR_sT2c-4QgSDLeHoh8JP7dooaXkHOOgCnuVO9EvTglAbk-bftWfeiYf_EjEiAJEIkCjcnF8bezxBIZ1QqgSRWwfqIotMuPG2E-3T-6bDjH4qO2gb9TkZod_27ZQaI3PwSiKW_-c2DpsHXfCCANKC-eIbDNyu-TodAgGO4_mGMNtGCSA6nthSFUEe0Zlk471f-ispaBWqyYHO9y6GS5LSItnAhz5F908IlK-w4ABCEUuwmw4_rGqKDtKh7eCIJAMbJakxyw3Z0IXRLMCatRA9PamIqSgEaTgDnyWNtrjhcGJ6sRX85BecumVdQfLjc2OIMHrNrL5ZOP0xoz2BaCYR-mY74TteatNEAV2x-OTDLxwo2VmI9jp54izGbsW704PCeFKXP_ZUDVq1bDADcOFyu_B6rT08uQqtUoFc83gGoNqVejBLLQkxROJPANlGsdyciYs5SyR4KQP_V7-kq_FRE0nxtk3Ett65J6_zklFSkznDOh9-3xtqDgPj_TIZ1CP6xJmQOf7qEqVjDONrd5HdflqZGOo26Suxj1fvh5jh0TNJcDWMdqTdCvfcMMJDsFDrE1rOT1_YSxzBMg_C-NXiqId7oOl9qKHFMg3A69ZyLoz7mbrodDvJUA1Vj1W6MEMQeuLmzDQ2PWs3jCHgADFws"),
              fit: BoxFit.cover),
        ),
        child: Container(
          width: 161.w,
          height: 201.h,
          margin: EdgeInsetsDirectional.only(bottom: 10.h, end: 24.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.25),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 8)
              ]),
          clipBehavior: Clip.hardEdge,
          child: AppImage(
              "https://avatars.mds.yandex.net/i?id=682f7ce420b3bce9286c83159a527040da4156bf-9218991-images-thumbs&ref=rim&n=33&w=250&h=250",
              fit: BoxFit.fill),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: .0,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              CupertinoIcons.mic,
              color: Colors.grey,
              size: 32,
            ),
            Icon(
              CupertinoIcons.video_camera,
              color: Colors.grey,
              size: 40,
            ),
            CircleAvatar(
              radius: 22,
              backgroundColor: AppTheme.primaryColor,
              child: const RotatedBox(
                quarterTurns: 15,
                child:
                    Icon(CupertinoIcons.phone, size: 32, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

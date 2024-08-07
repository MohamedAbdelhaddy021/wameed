import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/mutual/auth/select_user_type.dart';
import '../../../core/design/app_image.dart';
import '../../../core/design/text_logo.dart';
import '../../../core/logic/cache_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../patient/home/view.dart';
import 'login.dart';
import 'on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      navigateTo(
          CacheHelper.isFirstTime
              ? OnBoardingView()
              : CacheHelper.isAuth()
                  ? HomeView()
                  : SelectUserTypeView(isFormLogin: false,),
          removeHistory: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: Stack(
          children: [
            AppImage("splash_bg.png",
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                fit: BoxFit.cover),
            SizedBox(
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage("splash_app_logo.png", height: 250.h),
                    const TextLogo()
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

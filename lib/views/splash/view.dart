
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/text_logo.dart';
import 'package:wameed/core/logic/cache_helper.dart';
import 'package:wameed/views/continue/view.dart';
import 'package:wameed/views/interface/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              if(CacheHelper.isFirstTime()){
                return const InterfaceView();
              }else{
                return const ContinueView();
              }
            },
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Stack(
          children: [
            Image(
              image: const AssetImage("assets/images/splash_bg.png"),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage("assets/images/splash_app_logo.png"),
                    height: 250.h,
                  ),
                  const TextLogo(),
                  Text(
                    "mental health care",
                    style: TextStyle(
                      fontSize: 28.sp,
                      color: Theme.of(context).primaryColor.withOpacity(.57),
                      fontFamily: "satisfy",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

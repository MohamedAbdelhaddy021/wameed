import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/text_logo.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: const AssetImage("assets/images/splash_bg.png"),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
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
    );
  }
}

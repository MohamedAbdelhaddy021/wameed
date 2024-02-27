import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/views/continue/view.dart';
import 'package:wameed/views/doctor_app/doctor_registration/view.dart';
import 'package:wameed/views/patient_app/auth/login/view.dart';
import 'package:wameed/views/patient_app/library/book/view.dart';
import 'package:wameed/views/patient_app/library/home/view.dart';
import 'package:wameed/views/splash/view.dart';

import 'core/logic/cache_helper.dart';
import 'core/logic/helper_methods.dart';
import 'core/theming/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await CacheHelper.init();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: AppTheme.appTheme,
        home: child,
      ),
      child:  const LoginView(),
    );
  }
}

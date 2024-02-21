import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/cache_helper.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/app_theme.dart';
import 'package:wameed/views/auth/forget_password/view.dart';
import 'package:wameed/views/auth/login/view.dart';
import 'package:wameed/views/auth/register/view.dart';
import 'package:wameed/views/auth/reset_password/view.dart';
import 'package:wameed/views/chat_call/view.dart';
import 'package:wameed/views/continue/view.dart';
import 'package:wameed/views/doctor_app/doctor_profile/view.dart';
import 'package:wameed/views/doctor_app/doctor_registration/view.dart';
import 'package:wameed/views/doctor_app/doctor_settings/view.dart';
import 'package:wameed/views/doctor_app/times_of_work/view.dart';
import 'package:wameed/views/home/view.dart';
import 'package:wameed/views/info_about_doctor/view.dart';
import 'package:wameed/views/interface/view.dart';
import 'package:wameed/views/language_setting/view.dart';
import 'package:wameed/views/library/book/view.dart';
import 'package:wameed/views/library/home/view.dart';
import 'package:wameed/views/library/podcast/view.dart';
import 'package:wameed/views/questionnaire/view.dart';
import 'package:wameed/views/splash/view.dart';

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
      child: DoctorRegistrationView(),
    );
  }
}

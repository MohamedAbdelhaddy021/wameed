import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/continue/view.dart';
import 'package:wameed/views/doctor_chats/view.dart';
import 'package:wameed/views/doctor_profile/view.dart';
import 'package:wameed/views/doctor_registration/view.dart';
import 'package:wameed/views/doctor_report/view.dart';
import 'package:wameed/views/doctor_schedule/view.dart';
import 'package:wameed/views/doctor_settings/view.dart';
import 'package:wameed/views/forget_password/view.dart';
import 'package:wameed/views/help_and_support/view.dart';
import 'package:wameed/views/home/view.dart';
import 'package:wameed/views/info_about_doctor/view.dart';
import 'package:wameed/views/interface/view.dart';
import 'package:wameed/views/language_setting/view.dart';
import 'package:wameed/views/library/book/view.dart';
import 'package:wameed/views/library/podcast/view.dart';
import 'package:wameed/views/library/view.dart';
import 'package:wameed/views/login/view.dart';
import 'package:wameed/views/patient_information/view.dart';
import 'package:wameed/views/questionnaire/view.dart';
import 'package:wameed/views/register/view.dart';
import 'package:wameed/views/reset_password/view.dart';
import 'package:wameed/views/splash/view.dart';
import 'package:wameed/views/times_of_work/view.dart';
import 'package:wameed/views/verfication_otp_code/view.dart';

import 'clock_view.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // status bar color
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            centerTitle: true,
            elevation: 0.0,
          ),
          useMaterial3: true,
          fontFamily: "inter",
          dividerTheme: DividerThemeData(
            color: Colors.black.withOpacity(.20),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
            side: BorderSide(color: getMyMaterialColor()),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          )),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff39A7A7),
            primary: const Color(0xff39A7A7),
            background: const Color(0xff39A7A7),
            // background: const Color(0xff39A7A7),
          ),
        ),
        home: const QuestionnaireView(),
      ),
    );
  }
}

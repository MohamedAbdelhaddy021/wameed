import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/continue/view.dart';
import 'package:wameed/views/forget_password/view.dart';
import 'package:wameed/views/info_about_doctor/view.dart';
import 'package:wameed/views/interface/view.dart';
import 'package:wameed/views/login/view.dart';
import 'package:wameed/views/register/view.dart';
import 'package:wameed/views/reset_password/view.dart';
import 'package:wameed/views/splash/view.dart';
import 'package:wameed/views/verfication_otp_code/view.dart';

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
              color: Colors.white, centerTitle: true, elevation: 0.0),
          useMaterial3: true,
          fontFamily: "inter",
          dividerTheme: DividerThemeData(
            color: Colors.black.withOpacity(.20),
          ),
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: getMyMaterialColor()),
        ),
        home: const InfoAboutDoctor(),
      ),
    );
  }
}

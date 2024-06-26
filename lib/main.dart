import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/features/cubits/auth/change_password.dart';
import 'package:wameed/features/cubits/auth/profile.dart';
import 'package:wameed/features/cubits/auth/sendOTP.dart';
import 'package:wameed/features/cubits/auth/logout.dart';
import 'package:wameed/features/cubits/auth/register.dart';
import 'package:wameed/features/cubits/edit_settings.dart';
import 'package:wameed/features/cubits/scan_image.dart';
import 'core/logic/cache_helper.dart';
import 'core/logic/helper_methods.dart';
import 'core/utils/app_theme.dart';
import 'features/cubits/auth/login.dart';
import 'firebase_options.dart';
import 'views/mutual/auth/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  // await CacheHelper.clear();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        //auth
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => OTPCubit()),
        BlocProvider(create: (context) => LogoutCubit()),
        BlocProvider(create: (context) => ChangePasswordCubit()),

        //get data
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(create: (context) => EditSettingsCubit()),

        //ai
        BlocProvider(create: (context) => ScanImageCubit())


      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            theme: AppTheme.appTheme,
            home: child),
        child: SplashView(),
      ),
    );
  }
}

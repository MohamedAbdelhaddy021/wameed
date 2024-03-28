import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/theming/app_theme.dart';
import '../../doctor/chats.dart';
import '../before_scan.dart';
import '../motivzone.dart';
import '../profile.dart';
import 'home/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final iconList = <IconData>[Icons.home, Icons.message, Icons.email, Icons.person];

  final titleList = <String>["Home", "Chats", "Motivzone", "Profile"];
  int _currentIndex = 0;

  List<Widget> pages = [
    HomePage(), DoctorChatsView(), MotivzonePage(), PatientProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
          child: SizedBox(
            width: 70.w,
            height: 70.w,
            child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        blurStyle: BlurStyle.inner,
                        blurRadius: 8,
                        offset: const Offset(1, 1))
                  ],
                ),
                child: FloatingActionButton(
                  backgroundColor: const Color(0xffFAFAFA),
                  splashColor: Colors.transparent,
                  onPressed: () {
                    navigateTo(const BeforeScanView());
                  },
                  shape: const CircleBorder(),
                  child: Icon(Icons.qr_code_scanner,
                      color: Colors.grey, size: 32.sp),
                )),
          )),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          height: 99.h,
          scaleFactor: 0,
          tabBuilder: (index, isActive) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconList[index],
                    size: 20,
                    color: isActive ? AppTheme.primaryColor : Colors.grey),
                SizedBox(height: 4.h),
                Text(titleList[index],
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "poppins",
                        color: Colors.grey,
                        fontWeight: FontWeight.w500))
              ],
            );
          },
          activeIndex: _currentIndex,
          shadow:
              BoxShadow(blurRadius: 8.r, color: Colors.grey.withOpacity(.35)),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          notchMargin: 12.w,
          leftCornerRadius: 15.r,
          rightCornerRadius: 15.r,
          onTap: (index) {
            setState(() {
              if (index == 3) {
                navigateTo(PatientProfilePage());
              } else if (index == 2) {
                navigateTo(MotivzonePage());
              } else if (index == 1) {
                navigateTo(DoctorChatsView());
              } else {
                _currentIndex = index;
              }
              debugPrint("$index");
            });
          },
          itemCount: titleList.length),
    );
  }
}

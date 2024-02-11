import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final iconList = <IconData>[
    Icons.home,
    Icons.message,
    Icons.email,
    Icons.person,
  ];
  int _currentIndex = 0;
  final titleList = <String>[
    "Home",
    "Chats",
    "Motivzone",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
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
            onPressed: () {},
            shape: const CircleBorder(),
            child: Icon(Icons.qr_code_scanner, color: Colors.grey, size: 32.sp),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: 99.h,
        tabBuilder: (index, isActive) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                color: isActive ? Theme.of(context).primaryColor : Colors.grey,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                titleList[index],
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "poppins",
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              )
            ],
          );
        },
        activeIndex: _currentIndex,
        shadow: BoxShadow(blurRadius: 8.r, color: Colors.grey.withOpacity(.35)),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 20.r,
        rightCornerRadius: 20.r,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(index);
          });
        },
        itemCount: titleList.length,
      ),
      // body: ,
    );
  }
}

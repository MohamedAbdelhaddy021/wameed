import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_back.dart';
import '../../core/theming/app_theme.dart';
import '../../core/theming/styles.dart';

class MotivzonePage extends StatefulWidget {
 const  MotivzonePage({super.key});

  @override
  State<MotivzonePage> createState() => _MotivzonePageState();
}

class _MotivzonePageState extends State<MotivzonePage> {
   List<String>quotes=[
    "When your healthy self is strong enough to deal with all that comes your way in life,your eating disorder self will no longer be useful or necessary.",
    "Messi is the best for ever",
  ];
   int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBack(),
        centerTitle: false,
        title: Text.rich(
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "poppins"),
          TextSpan(
            text: "Mo",
            style: TextStyles.poppins24BlackSemiBold,
            children: [
              TextSpan(
                  text: "T",
                  style: TextStyle(
                      fontFamily: "courgette",
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp)),
              TextSpan(text: "ivZone", style: TextStyles.poppins24BlackSemiBold)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 350.h,
              padding: EdgeInsetsDirectional.only(
                  start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xff39a7a7).withOpacity(.40),
                        blurRadius: 8.r,
                        offset: const Offset(3, 4)),
                    BoxShadow(
                        color: const Color(0xff39A7A7).withOpacity(.60),
                        blurRadius: 8,
                        offset: const Offset(-2, -2)),
                    BoxShadow(
                        color: const Color(0xff39A7A7).withOpacity(.60),
                        blurRadius: 8,
                        offset: const Offset(2, 2)),
                  ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 106.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppTheme.primaryColor.withOpacity(.35),
                        ),
                        child: Center(
                          child: Text("Motivation",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "poppins")),
                        )),
                  ],
                ),
                SizedBox(height: 56.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new,
                          size: 22, color: Colors.black.withOpacity(.19)), onPressed: () {
                        if(index>0){
                          index-=1;
                        }
                        setState(() {

                        });
                    },
                    ),
                    Expanded(
                      child: Text(
                        quotes[index],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins",
                            color: AppTheme.primaryColor),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios,
                          size: 22, color: Colors.black.withOpacity(.19)), onPressed: () {
                        if(index<quotes.length-1){
                          index+=1;
                        print(index);}
                        setState(() {});
                    },
                    ),
                    SizedBox(width: 16.w)
                  ],
                ),
                Spacer(),
                Text("- Carolyn Costin",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins",
                        color: AppTheme.primaryColor)),
              ]),
            ),
            SizedBox(
              height: 104.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_double_arrow_right,
                    size: 26, color: Colors.black.withOpacity(.4)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text("Swipe Left & right For next",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w600,
                          color: AppTheme.primaryColor)),
                ),
                Icon(Icons.keyboard_double_arrow_left,
                    size: 26, color: Colors.black.withOpacity(.4))
              ],
            )
          ],
        ),
      ),
    );
  }
}

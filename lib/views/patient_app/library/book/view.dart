import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/custom_app_bar_with_text_logo.dart';

import '../../../../core/theming/styles.dart';


class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWithTextLogo(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 21.w,top: 24.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 264.w,
                height: 273.h,
                margin: EdgeInsetsDirectional.only(start: 3.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/book_cover_test.png"),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                "THE NOONDAY DEMON",
                style: TextStyles.poppins16BlackSemiBold.copyWith(
                  color: Colors.black.withOpacity(.69),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                width: 182.w,
                child: Text(
                  "AN ATLAS OF DEPRESSION BY AN DREW SOLOMON".toLowerCase(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black.withOpacity(.38),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 56.w),
                child: Text(
                    """Solomon calls his book “An Atlas of Depression” and once you’ve covered about half of the 688 pages, you start to realize why: this is everything you would ever want to 
          know about depression—the personal experience of it,
          the medical experience of it, the pharmacological 
          treatments, the history of it, the cultural interpretations 
          of it, and of course, Solomon’s own struggles with it. 
          The book is a lot to take in. What carries the book, 
          though, is the combination of how well-written it is,
          along with the shocking severity of Solomon’s own story.""",style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black.withOpacity(.39),
                  fontWeight: FontWeight.w500,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

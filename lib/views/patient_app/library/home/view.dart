import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/core/theming/styles.dart';
import 'package:wameed/views/patient_app/library/book/view.dart';
import 'package:wameed/views/patient_app/library/podcast/view.dart';

import '../../../../core/design/custom_app_bar_with_text_logo.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWithTextLogo(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Text(
              "To know more information about\nDepression , you can read more...",
              style: TextStyles.poppins16BlackSemiBold
                  .copyWith(color: Colors.black),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Text(
              "Top Books :",
              style: TextStyles.poppins16BlackSemiBold.copyWith(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
            height: 278.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(onTap: (){
                navigateTo(const BookView());
              },child: _Item()),
              separatorBuilder: (context, index) => SizedBox(
                width: 32.w,
              ),
              itemCount: 5,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 24.w,
              bottom: 19.h,
              top: 24.h
            ),
            child: Text(
              "Top Podcasts :",
              style: TextStyles.poppins16BlackSemiBold.copyWith(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(onTap:(){
                navigateTo(const PodCastView());
              },child: _PodCastItem()),
              separatorBuilder: (context, index) => SizedBox(
                width: 32.w,
              ),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 174.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 174.w,
            height: 205.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                image: AssetImage("assets/images/book_cover_test.png"),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "THE NOONDAY DEMON",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black.withOpacity(.69),
              fontWeight: FontWeight.bold,
              fontFamily: "poppins",
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            "AN ATLAS OF DEPRESSION BYANDREW SOLOMON",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black.withOpacity(.38),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _PodCastItem extends StatelessWidget {
  const _PodCastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 224.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 224.w,
            height: 224.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                image: AssetImage("assets/images/podcast_img_cover_test.png"),
              ),
            ),
          ),
          SizedBox(height: 12.h,),
          Text(
            "‘The SelfWork Podcast’",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black.withOpacity(.69),
              fontWeight: FontWeight.bold,
              fontFamily: "poppins",
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            "Apple Podcasts rating: 4.9",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black.withOpacity(.38),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Available on: Apple, Audible,and Podbean",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black.withOpacity(.38),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

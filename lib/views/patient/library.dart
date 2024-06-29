import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_image.dart';
import '../../../core/design/custom_app_bar_with_text_logo.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/utils/styles.dart';
import 'book_details.dart';
import 'podcast.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  List<String> books = [
    "3.png",
    "1.png",
    "2.png",
  ];
  List<String> booksName = [
    "THE NOONDAY DEMON",
    "FEELING GOOD ",
    "THE HAPPINESS TRAP",
  ];
  List<String> podcastsName = [
    "‘Owning It: The Anxiety Podcast’",
    "‘On Purpose with Jay Shetty’",
    "‘Owning It: The Anxiety Podcast’",
  ];
  List<String> booksSubName = [
    "AN ATLAS OF DEPRESSION BY ANDREW SOLOMON",
    "THE NEW MOOD THERAPY BY DAVID BURNS",
    "HOW TO STOP STRUGGLING AND START LIVING BY RUSS HARRIS",
  ];
  List<String> podcasts = [
    "p3.png",
    "p1.png",
    "p2.png",
  ];

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
              )),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Text(
              "Top Books :",
              style: TextStyles.poppins16BlackSemiBold
                  .copyWith(color: Colors.black, fontSize: 18.sp),
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            height: 278.h,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      navigateTo(BookView(image: books[index],name: booksName[index],));
                    },
                    child: _BookItem(
                      image: books[index],
                      name: booksName[index],
                      description: booksSubName[index],
                    )),
                separatorBuilder: (context, index) => SizedBox(width: 32.w),
                itemCount: books.length),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: 24.w, bottom: 19.h, top: 24.h),
            child: Text(
              "Top Podcasts :",
              style: TextStyles.poppins16BlackSemiBold
                  .copyWith(color: Colors.black, fontSize: 18.sp),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    navigateTo(PodCastView(
                      image: podcasts[index],
                      name: podcastsName[index],
                    ));
                  },
                  child: _PodCastItem(
                    image: podcasts[index],
                    name: podcastsName[index],
                  )),
              separatorBuilder: (context, index) => SizedBox(width: 32.w),
              itemCount: podcasts.length,
            ),
          )
        ],
      ),
    );
  }
}

class _BookItem extends StatelessWidget {
  final String image, name, description;

  const _BookItem(
      {super.key,
      required this.image,
      required this.name,
      required this.description});

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
            ),
            child: AppImage(image),
          ),
          SizedBox(height: 12.h),
          Text(
            name,
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black.withOpacity(.69),
                fontWeight: FontWeight.bold,
                fontFamily: "poppins"),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
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
  final String image,name;

  const _PodCastItem({super.key, required this.image, required this.name});

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
            ),
            child: AppImage(image),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black.withOpacity(.69),
                fontWeight: FontWeight.bold,
                fontFamily: "poppins"),
          ),
          SizedBox(height: 4.h),
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
          Text("Available on: Apple, Audible,and Pod bean",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black.withOpacity(.38),
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}

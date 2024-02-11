import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/custom_app_bar_with_text_logo.dart';
import 'package:wameed/core/theming/styles.dart';

class PodCastView extends StatelessWidget {
  const PodCastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWithTextLogo(),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,top:24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 253.w,
              height: 249.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage("assets/images/podcast_img_cover_test.png"),
                ),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            Text(
              "‘The SelfWork Podcast’",
              style: TextStyles.poppins16BlackSemiBold.copyWith(
                color: Colors.black.withOpacity(.69),
                decoration: TextDecoration.underline
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
                  fontFamily: "poppins"),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text("Goals :", style: TextStyles.poppins18Black69SemiBold),
            SizedBox(
              height: 12.h,
            ),
            Text(
              """For some people, depression comes with feelings
of loneliness. Thankfully, with “The SelfWork
Podcast,” you don’t have to feel so alone.""",
              style: TextStyles.poppins14Black55Medium.copyWith(
                fontSize: 12.sp,
                color: Colors.black.withOpacity(.39),
              ),
              maxLines: 3,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text("Content :", style: TextStyles.poppins18Black69SemiBold),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Container(
                  width: 102.w,
                  height: 102.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/podcast_img_cover_test.png"),
                    ),
                  ),
                  child: Center(child: SvgPicture.asset("assets/icons/svgs/play.svg",width: 28.w,height: 28.w,)),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Expanded(
                    child: Container(
                  height: 114.h,
                  padding: EdgeInsetsDirectional.only(end: 35.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "‘The SelfWork Podcast’",
                        style: TextStyles.poppins16BlackSemiBold.copyWith(
                          color: Colors.black.withOpacity(.69),
                            decoration: TextDecoration.underline
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
                            fontFamily: "poppins"),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "Episode 1",
                            style: TextStyles.poppins14Black55Medium.copyWith(
                                color: Color(0xff494B4B).withOpacity(.88),
                                fontSize: 12.sp),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "23:4",
                            style: TextStyles.poppins16BlackSemiBold
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
            SizedBox(height: 24.h,),
            Row(
              children: [
                Container(
                  width: 102.w,
                  height: 102.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/podcast_img_cover_test.png"),
                    ),
                  ),
                  child: Center(child: SvgPicture.asset("assets/icons/svgs/play.svg",width: 28.w,height: 28.w,)),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Expanded(
                    child: Container(
                  height: 114.h,
                  padding: EdgeInsetsDirectional.only(end: 35.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "‘The SelfWork Podcast’",
                        style: TextStyles.poppins16BlackSemiBold.copyWith(
                          color: Colors.black.withOpacity(.69),
                            decoration: TextDecoration.underline
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
                            fontFamily: "poppins"),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            "Episode 2",
                            style: TextStyles.poppins14Black55Medium.copyWith(
                                color: Color(0xff494B4B).withOpacity(.88),
                                fontSize: 12.sp),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Text(
                            "23:04",
                            style: TextStyles.poppins16BlackSemiBold
                                .copyWith(fontSize: 12.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

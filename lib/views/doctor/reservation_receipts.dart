import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/design/custom_app_bar.dart';

class ReceiptsView extends StatefulWidget {
  const ReceiptsView({super.key});

  @override
  State<ReceiptsView> createState() => _ReceiptsViewState();
}

class _ReceiptsViewState extends State<ReceiptsView> {
  int selectedContainerIndex = 0;

  List<String>names=[
    "Ahmed Ali",
    "Mohamed Ibrahim",
    "Kareem Essayed",
    "Wael Ahmed",
  ];
  List<String>phoneNumbers=[
    "01098603578",
    "01013050956",
    "01221558039",
    "01002359545",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Payment list"),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w,top: 24.h),
        child: ListView.separated(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              height: 115.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffBFDFDF).withOpacity(.24),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 26.w, end: 46.w),
                      child: Text("5",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppins",
                            fontSize: 16.sp,
                          )),
                    ),
                    VerticalDivider(
                        color: Colors.black.withOpacity(.08), thickness: 1),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 36.w),
                      child: Container(
                        height: 36.h,
                        width: 86.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: const Color(0xffACB823).withOpacity(.33),
                        ),
                        child: Center(
                            child: Text('Pending',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "poppins",
                                  fontSize: 16.sp,
                                ))),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black.withOpacity(.08),
                      thickness: 1,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 36.w),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(names[index],
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.54),
                                      fontSize: 16.sp,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w600)),
                              Text(phoneNumbers[index],
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.54),
                                      fontSize: 16.sp,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                        color: Colors.black.withOpacity(.08), thickness: 1),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 36.w),
                      child: Container(
                        height: 36.h,
                        width: 124.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: const Color(0xffABABAB).withOpacity(.38),
                        ),
                        child: Center(
                            child: Text('',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "poppins",
                                  fontSize: 16.sp,
                                ))),
                      ),
                    ),
                    VerticalDivider(
                        color: Colors.black.withOpacity(.08), thickness: 1),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 36.w),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedContainerIndex = 0;
                              });
                            },
                            child: Container(
                              height: 36.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: const Color(0xff2FC347).withOpacity(.37),
                              ),
                              child: const Center(child: Icon(Icons.check)),
                            ),
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedContainerIndex = 0;
                              });
                            },
                            child: Container(
                              height: 36.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: const Color(0xffE0ADAD),
                              ),
                              child: const Center(child: Icon(Icons.close)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 24.h),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/design/custom_app_bar.dart';
import 'components/tabBar_item.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Payment"),
        body: Padding(
          padding: EdgeInsets.all(24.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                width: double.infinity,
                height: 139.h,
                padding: EdgeInsetsDirectional.only(
                    start: 6.w, end: 16.w, top: 24.h, bottom: 22.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xffF9F9F9),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(2, 2)),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 7,
                          offset: const Offset(-2, -2)),
                    ]),
                child: Row(children: [
                  Column(
                    children: [CircleAvatar(radius: 33.w)],
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Dr. John Smith",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600)),
                              const Spacer(),
                              Text("5.00 \$",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Text("Psychiatrist",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "poppins",
                                  fontSize: 12.sp,
                                  color: Colors.black.withOpacity(.56))),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Text("4.6",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w600)),
                              SizedBox(width: 4.w),
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 20)
                            ],
                          ),
                        ]),
                  ),
                ])),
            SizedBox(height: 26.h),
            Text("Payment Method",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 16.h),
            Expanded(child: TabBarItem()),
          ]),
        ));
  }
}

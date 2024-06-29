import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/design/app_dialog.dart';
import 'package:wameed/views/patient/home/view.dart';

import '../../../core/design/app_back.dart';
import '../../../core/design/app_filled_button.dart';
import '../../../core/design/app_input.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/utils/app_theme.dart';
import '../payment/view.dart';
import 'components/calendar_item.dart';
import 'components/time_item.dart';

class BookAppointmentView extends StatefulWidget {
  const BookAppointmentView({required this.name});

  final String name;

  @override
  State<BookAppointmentView> createState() => _BookAppointmentViewState();
}

class _BookAppointmentViewState extends State<BookAppointmentView> {
  int? selectedIndex;

  int timeSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleTextStyle: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600),
          title: Text(widget.name),
          centerTitle: false,
          leading: AppBack()),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("July, 2024",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins')),
            SizedBox(height: 24.h),
            SizedBox(
                height: 75.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          selectedIndex = index + 1;
                          setState(() {});
                        },
                        child: CalendarDayItem(
                          index: index,
                          selectedIndex: selectedIndex,
                        )),
                    separatorBuilder: (context, index) => SizedBox(width: 16.w),
                    itemCount: 30)),
            SizedBox(height: 28.h),
            Text("Available Time",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600)),
            SizedBox(
                height: 190.h,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 30.w / 80.w,
                        crossAxisSpacing: 12.h,
                        mainAxisSpacing: 15.w,
                        crossAxisCount: 3),
                    itemCount: 8,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            print("helloo");
                            setState(() {
                              timeSelectedIndex = index;
                              print(index);
                              print(timeSelectedIndex);
                            });
                          },
                          child: SelectTimeItem(
                            index: index,
                            selectedIndex: timeSelectedIndex,
                          ),
                        ))),
            SizedBox(height: 16.h),
            Text("Patient Details",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 16.h),
            Text("Full name",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black.withOpacity(.51),
                )),
            SizedBox(height: 16.h),
            AppInput(labelText: "", height: 14.h),
            Text("Age",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black.withOpacity(.51),
                )),
            SizedBox(height: 16.h),
            AppInput(labelText: "", height: 14.h),
            SizedBox(height: 4.h),
            Text("Payment Method",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 14.h),
            GestureDetector(
              onTap: () {
                navigateTo(PaymentView());
              },
              child: Container(
                  width: double.infinity,
                  height: 55.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2).withOpacity(.42),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: AppTheme.primaryColor.withOpacity(.21))),
                  child: Row(children: [
                    Text("Choose payment method",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "poppins",
                            color: Colors.black.withOpacity(.31))),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.grey, size: 21)
                  ])),
            ),
            SizedBox(height: 30.h),
            AppButton(
                text: "Set an appointment",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AppDialog(
                        buttonText: "Done",
                        text: "Successfully booked",
                        onTap: () {
                          navigateTo(HomeView(), removeHistory: true);
                        },
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}

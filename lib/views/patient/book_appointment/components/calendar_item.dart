import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_theme.dart';

class CalendarDayItem extends StatefulWidget {
  const CalendarDayItem({super.key, required this.index, this.selectedIndex});

  final int index;
  final int? selectedIndex;


  @override
  State<CalendarDayItem> createState() => _CalendarDayItemState();
}

class _CalendarDayItemState extends State<CalendarDayItem> {
  List<int> days = List.generate(30, (index) => index+1 );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 54.w,
            height: 66.h,
            decoration: BoxDecoration(
                color: widget.selectedIndex==days[widget.index]
                    ? Color(0xffF2F2F2).withOpacity(.63)
                    : Colors.white,
                border: widget.selectedIndex==days[widget.index]
                    ? Border.all(color: AppTheme.primaryColor.withOpacity(.16))
                    : null,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(widget.selectedIndex==days[widget.index] ? (.11) : .25))
                ]),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(days[widget.index].toString(),
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: widget.selectedIndex==days[widget.index]
                          ? Colors.black.withOpacity(.26)
                          : AppTheme.primaryColor)),
              SizedBox(height: 4.h),
              Text("Mon",
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: widget.selectedIndex==days[widget.index]
                          ? Colors.black.withOpacity(.26)
                          : AppTheme.primaryColor))
            ])));
  }
}

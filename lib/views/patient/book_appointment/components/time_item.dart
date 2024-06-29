import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_theme.dart';
import '../../../../core/utils/styles.dart';

class SelectTimeItem extends StatefulWidget {
  const SelectTimeItem({super.key, required this.index, required this.selectedIndex});
  final int index;
  final int? selectedIndex;

  @override
  State<SelectTimeItem> createState() => _SelectTimeItemState();
}

class _SelectTimeItemState extends State<SelectTimeItem> {
  int? newIndex;
  final List<String> timeSlots = [
    "09:00AM",
    "10:00AM",
    "11:00AM",
    "12:00PM",
    "01:00PM",
    "02:00PM",
    "03:00PM",
    "04:00PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: widget.selectedIndex==widget.index
              ? AppTheme.primaryColor.withOpacity(.7)
              : Colors.black.withOpacity(.06)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.watch_later_outlined,
            color: widget.selectedIndex==widget.index
                ? Colors.white
                : AppTheme.primaryColor.withOpacity(.7),
            size: 21.sp),
        SizedBox(width: 4.w),
        Text(timeSlots[widget.index],
            style: widget.selectedIndex==widget.index
                ? TextStyles.poppins14Black55Medium.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w600)
                : TextStyles.poppins14Black55Medium)
      ]),
    );
  }
}

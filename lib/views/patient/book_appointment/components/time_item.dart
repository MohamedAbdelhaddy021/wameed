import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_theme.dart';
import '../../../../core/theming/styles.dart';

class SelectTimeItem extends StatefulWidget {
  const SelectTimeItem({super.key});

  @override
  State<SelectTimeItem> createState() => _SelectTimeItemState();
}

class _SelectTimeItemState extends State<SelectTimeItem> {
  List<int> indexes = [];
  int? newIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (indexes.contains(newIndex)) {
          indexes.remove(newIndex);
        } else {
          newIndex = indexes.isNotEmpty ? indexes.last + 1 : 0;
          indexes.add(newIndex!);
        }
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: indexes.contains(newIndex)
                ? AppTheme.primaryColor.withOpacity(.7)
                : Colors.black.withOpacity(.06)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.watch_later_outlined,
              color: indexes.contains(newIndex)
                  ? Colors.white
                  : AppTheme.primaryColor.withOpacity(.7),
              size: 21.sp),
          SizedBox(width: 4.w),
          Text("09:00AM",
              style: indexes.contains(newIndex)
                  ? TextStyles.poppins14Black55Medium.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600)
                  : TextStyles.poppins14Black55Medium)
        ]),
      ),
    );
  }
}

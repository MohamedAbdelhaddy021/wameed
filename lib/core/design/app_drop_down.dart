import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';
import '../utils/styles.dart';
import 'app_image.dart';

// class AppDropDown extends StatefulWidget {
//   final List<String> list;
//   final String hint;
//
//   const AppDropDown({super.key, required this.list, required this.hint});
//
//   @override
//   State<AppDropDown> createState() => _AppDropDownState();
// }
//
// class _AppDropDownState extends State<AppDropDown> {
//   int? selectedIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 16.h),
//       child: DropdownButtonFormField(
//         decoration: InputDecoration(hintText: widget.hint),
//         items: List.generate(
//             widget.list.length,
//             (index) => DropdownMenuItem(
//                   value: index,
//                   child: Text(widget.list[index]),
//                 )),
//         onChanged: (val) {
//           selectedIndex = val;
//           setState(() {});
//         },
//         isExpanded: true,
//         dropdownColor: Colors.grey[200],
//         icon: AppImage("arrow_down.svg", width: 16.w),
//       ),
//     );
//   }
// }





class AppDropDown extends StatefulWidget {
  final List<String> list;
  final String hint;
  final double? expandedInsets;
  // final Color color;

  const AppDropDown({super.key, required this.list, required this.hint, this.expandedInsets});

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child:DropdownMenu(
          // menuHeight: 100.h,
          onSelected: (value) {
            selectedIndex=value;
            setState(() {});
          },
          expandedInsets: EdgeInsets.only(right: widget.expandedInsets??0),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppTheme.primaryColor.withOpacity(.29)),
                  borderRadius: BorderRadius.circular(12.r)),
              contentPadding: EdgeInsetsDirectional.only(start: 12.w,top: 40)),
          menuStyle: MenuStyle(
              alignment: const Alignment(-1, 1.5),
              visualDensity: VisualDensity.comfortable,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: BorderSide(color: AppTheme.primaryColor.withOpacity(.29))),
              ),
              elevation: MaterialStateProperty.all(.2),
              padding: MaterialStateProperty.all(
                EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              )),
          hintText: widget.hint,
          enableFilter: true,
          textStyle: TextStyles.poppins16BlackSemiBold
              .copyWith(color: Colors.black.withOpacity(.75)),
          trailingIcon: AppImage("arrow_down.svg"),
          selectedTrailingIcon: AppImage("arrow_up.svg"),
          dropdownMenuEntries: List.generate(widget.list.length, (index) => DropdownMenuEntry(value: index, label: widget.list[index]))
      ),
    );
  }
}

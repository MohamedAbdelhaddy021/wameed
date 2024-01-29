import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/theming/styles.dart';

class TimesOfWorkView extends StatefulWidget {
  const TimesOfWorkView({super.key});

  @override
  State<TimesOfWorkView> createState() => _TimesOfWorkViewState();
}

class _TimesOfWorkViewState extends State<TimesOfWorkView> {
  bool allIsChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Times of work",
          style: TextStyles.inter20BlackSemiBold,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.w, top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 22.w,
                  height: 22.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(.4),
                        Theme.of(context).primaryColor.withOpacity(.1),
                      ],
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                    ),
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      width: 3.w,
                      color: const Color(0xff455A64),
                    ),
                  ),
                  child: Checkbox(
                    value: allIsChecked,
                    side: BorderSide.none,
                    onChanged: (value) {
                      allIsChecked = value!;
                      setState(() {});
                    },
                    fillColor: MaterialStateProperty.all(Colors.transparent),
                    checkColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Text(
                  "Choose day\\s work :",
                  style: TextStyles.poppins16BlackSemiBold.copyWith(
                    color: Colors.black.withOpacity(.79),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            _Item(
              dayTitle: "Saturday",
              isChecked: allIsChecked,
            ),
            _Item(
              dayTitle: "Sunday",
              isChecked: allIsChecked,
            ),
            _Item(dayTitle: "Monday", isChecked: allIsChecked),
            _Item(
              dayTitle: "Tuesday",
              isChecked: allIsChecked,
            ),
            _Item(
              dayTitle: "Wednesday",
              isChecked: allIsChecked,
            ),
            _Item(dayTitle: "Thursday", isChecked: allIsChecked),
            _Item(dayTitle: "Friday", isChecked: allIsChecked),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Choose time work :",
              style: TextStyles.poppins16BlackSemiBold.copyWith(
                color: Colors.black.withOpacity(.79),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
                width: 219.w,
                height: 64.h,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Center(
                  child: DropdownMenu(
                    width: 219.w,
                    menuHeight: 162.h,

                    menuStyle: MenuStyle(
                      visualDensity: VisualDensity.comfortable,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                          ),
                        ),
                      elevation: MaterialStateProperty.all(0.0),
                      surfaceTintColor: MaterialStateProperty.all(Theme.of(context).primaryColor.withOpacity(.20)),
                      padding: MaterialStateProperty.all(EdgeInsetsDirectional.symmetric(horizontal: 20.w,vertical: 10.h))
                    ),
                    hintText: "From - To",
                    textStyle: TextStyles.poppins16BlackSemiBold
                        .copyWith(color: Colors.black.withOpacity(.75)),
                    trailingIcon:
                        SvgPicture.asset("assets/icons/svgs/arrow_down.svg"),
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(value: 1, label: "9:00 am : 10:00 am",),
                      DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                      DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                      DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  _Item({super.key, required this.dayTitle, required this.isChecked});

  final String dayTitle;
  late bool isChecked;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2.w,
                  color: const Color(0xff707070),
                ),
                borderRadius: BorderRadius.circular(4.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.20),
                    blurRadius: 1,
                    offset: const Offset(1, 1), // changes position of shadow
                  ),
                ]),
            child: Checkbox(
              value: widget.isChecked,
              side: BorderSide.none,
              onChanged: (value) {
                widget.isChecked = value!;
                setState(() {});
              },
              fillColor: MaterialStateProperty.all(Colors.transparent),
              checkColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            widget.dayTitle,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins"),
          )
        ],
      ),
    );
  }
}

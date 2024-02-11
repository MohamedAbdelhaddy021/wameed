import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wameed/core/design/app_filled_button.dart';
import 'package:wameed/core/theming/styles.dart';

class TimesOfWorkView extends StatefulWidget {
  const TimesOfWorkView({super.key});

  @override
  State<TimesOfWorkView> createState() => _TimesOfWorkViewState();
}

class _TimesOfWorkViewState extends State<TimesOfWorkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Times of work",
          style: TextStyles.inter20BlackSemiBold,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(start: 30.w, top: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 20.w,
                  height: 20.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor.withOpacity(.4),
                        Theme.of(context).primaryColor.withOpacity(.1),
                      ],
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                    ),
                    color: const Color(0xffBFDFDF).withOpacity(.48),
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      width: 2.w,
                      color: const Color(0xff455A64),
                    ),
                  ),
                  child: AbsorbPointer(
                    child: Checkbox(
                      value: true,
                      side: BorderSide.none,
                      onChanged: (value) {},
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      checkColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
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
            ),
             _Item(
              dayTitle: "Sunday",
            ),
             _Item(
              dayTitle: "Monday",
            ),
             _Item(
              dayTitle: "Tuesday",
            ),
             _Item(
              dayTitle: "Wednesday",
            ),
             _Item(dayTitle: "Thursday"),
             _Item(
              dayTitle: "Friday",
            ),
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
                      width: 2.w,
                    ),
                    borderRadius: BorderRadius.circular(15.r)),
                child: DropdownMenu(
                  width: 219.w,
                  menuHeight: 100.h,
                  inputDecorationTheme: InputDecorationTheme(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsetsDirectional.only(start: 12.w)),
                  menuStyle: MenuStyle(
                    alignment: const Alignment(
                      -1,1.5
                    ),
                    visualDensity: VisualDensity.comfortable,
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        side: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2.w),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(0.0),
                    padding: MaterialStateProperty.all(
                      EdgeInsetsDirectional.symmetric(
                        horizontal: 10.w,
                      ),
                    ),
                  ),
                  hintText: "From - To",
                  textStyle: TextStyles.poppins16BlackSemiBold.copyWith(
                    color: Colors.black.withOpacity(.75),
                  ),
                  trailingIcon:
                      SvgPicture.asset("assets/icons/svgs/arrow_down.svg"),
                  selectedTrailingIcon:
                      SvgPicture.asset("assets/icons/svgs/arrow_up.svg"),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(
                      value: 1,
                      label: "9:00 am : 10:00 am",
                    ),
                    DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                    DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                    DropdownMenuEntry(value: 1, label: "9 : 10 AM"),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            AppFilledButton(
              text: "Back",
              onPressed: () {
                Navigator.pop(context);
              },
              fontFamily: "poppins",
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({
    required this.dayTitle,
  });

  final String dayTitle;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 16.h,),
      child: Row(
        children: [
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
                color: Colors.white,
                border: isChecked
                    ? Border.all(color: Colors.transparent, width: 0)
                    : Border.all(
                        width: 1.5.w,
                        strokeAlign: BorderSide.strokeAlignInside,
                        color: const Color(0xff707070),
                      ),
                borderRadius: BorderRadius.circular(4.r),),
            child: Checkbox(
              value: isChecked,
              side: BorderSide.none,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              },
              fillColor: isChecked ? MaterialStateProperty.all(
                      const Color(0xff96D9C9).withOpacity(.7))
                  : MaterialStateProperty.all(Colors.transparent),
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
              fontFamily: "poppins",
            ),
          )
        ],
      ),
    );
  }
}

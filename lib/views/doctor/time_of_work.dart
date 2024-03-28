import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_drop_down.dart';
import '../../core/design/app_filled_button.dart';
import '../../core/design/custom_app_bar.dart';
import '../../core/theming/app_theme.dart';
import '../../core/theming/styles.dart';

class TimesOfWorkView extends StatefulWidget {
  const TimesOfWorkView({super.key});

  @override
  State<TimesOfWorkView> createState() => _TimesOfWorkViewState();
}

class _TimesOfWorkViewState extends State<TimesOfWorkView> {
  List<String> times = [
    "8:00 am : 9:00 am ",
    "9:00 am : 10:00 am ",
    "10:00 am : 11:00 am "
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Times of work"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          AppTheme.primaryColor.withOpacity(.4),
                          AppTheme.primaryColor.withOpacity(.1)
                        ],
                        begin: AlignmentDirectional.topCenter,
                        end: AlignmentDirectional.bottomCenter),
                    color: const Color(0xffBFDFDF).withOpacity(.48),
                    borderRadius: BorderRadius.circular(4.r),
                    border:
                        Border.all(width: 2.w, color: const Color(0xff455A64))),
                child: AbsorbPointer(
                  child: Checkbox(
                      value: true,
                      side: BorderSide.none,
                      onChanged: (value) {},
                      fillColor: MaterialStateProperty.all(Colors.transparent),
                      checkColor: AppTheme.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r))),
                ),
              ),
              SizedBox(width: 9.w),
              Text(
                "Choose day\\s work :",
                style: TextStyles.poppins16BlackSemiBold
                    .copyWith(color: Colors.black.withOpacity(.79)),
              )
            ],
          ),
          SizedBox(height: 20.h),
          _Item(dayTitle: "Saturday"),
          _Item(dayTitle: "Sunday"),
          _Item(dayTitle: "Monday"),
          _Item(dayTitle: "Tuesday"),
          _Item(dayTitle: "Wednesday"),
          _Item(dayTitle: "Thursday"),
          _Item(dayTitle: "Friday"),
          SizedBox(height: 40.h),
          Text("Choose time work :",
              style: TextStyles.poppins16BlackSemiBold
                  .copyWith(color: Colors.black.withOpacity(.79))),
          SizedBox(height: 18.h),
          AppDropDown(
              list: times,
              hint: "From - To",
              expandedInsets: MediaQuery.of(context).size.width / 2.3),
          SizedBox(height: MediaQuery.of(context).size.height / 6),
          AppButton(
              text: "Back",
              onPressed: () {
                Navigator.pop(context);
              },
              fontFamily: "poppins")
        ]),
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
      padding: EdgeInsetsDirectional.only(bottom: 16.h),
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
                borderRadius: BorderRadius.circular(4.r)),
            child: Checkbox(
              value: isChecked,
              side: BorderSide.none,
              onChanged: (value) {
                isChecked = value!;
                setState(() {});
              },
              fillColor: isChecked
                  ? MaterialStateProperty.all(
                      const Color(0xff96D9C9).withOpacity(.7))
                  : MaterialStateProperty.all(Colors.transparent),
              checkColor: AppTheme.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r)),
            ),
          ),
          SizedBox(width: 30.w),
          Text(widget.dayTitle,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "poppins"))
        ],
      ),
    );
  }
}

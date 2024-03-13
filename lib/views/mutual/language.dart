import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/design/app_back.dart';
import '../../core/theming/app_theme.dart';

class LanguageSettingView extends StatefulWidget {
  const LanguageSettingView({super.key});

  @override
  State<LanguageSettingView> createState() => _LanguageSettingViewState();
}

class _LanguageSettingViewState extends State<LanguageSettingView> {
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBack(),
        title: Text(
          "Language",
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 24.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.check,
                size: 24.w,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 79.w, start: 24.w, end: 24.w),
        child: Column(
          children: [
            _Item(
                text: "English",
                isEnglish: isEnglish,
                onTap: () {
                  isEnglish = !isEnglish;
                  setState(() {});
                }),
            SizedBox(
              height: 28.h,
            ),
            _Item(
                text: "Arabic",
                isEnglish: !isEnglish,
                onTap: () {
                  isEnglish = !isEnglish;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({required this.text, required this.isEnglish, this.onTap});

  final String text;
  final bool isEnglish;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 53.h,
        alignment: AlignmentDirectional.centerStart,
        padding: EdgeInsetsDirectional.only(start: 18.w),
        decoration: BoxDecoration(
            color: isEnglish
                ? AppTheme.primaryColor
                : const Color(0xffF2F2F2).withOpacity(.63),
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  blurStyle: BlurStyle.outer,
                  color: Colors.black.withOpacity(.25)),
              BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  blurStyle: BlurStyle.outer,
                  color: Colors.black.withOpacity(.25)),
            ]),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "poppins",
            color: isEnglish ? Colors.white : Colors.black.withOpacity(.55),
          ),
        ),
      ),
    );
  }
}

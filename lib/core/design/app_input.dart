import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/core/utils/styles.dart';

import 'app_image.dart';

class AppInput extends StatefulWidget {
  const AppInput(
      {super.key,
      required this.labelText,
      this.isPassword = false,
      this.bottomPadding = 20,
      this.prefixImgPath = "",
      this.isPrefix = false,
      this.keyboardType = TextInputType.text,
      this.controller,
      this.validator,
      this.suffixIcon,
      this.prefixIcon,
      this.height = 20});

  final String labelText, prefixImgPath;
  final bool isPassword, isPrefix;
  final double bottomPadding;
  final double height;

  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  final Widget? suffixIcon, prefixIcon;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomPadding.h),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: isHidden && widget.isPassword,
        validator: widget.validator,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: widget.height),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    isHidden = !isHidden;
                    setState(() {});
                  },
                  icon: Icon(
                    color: Colors.black.withOpacity(.5),
                    isHidden ? Icons.visibility_off : Icons.visibility,
                    size: 22,
                  ),
                )
              : widget.suffixIcon,
          prefixIcon: widget.isPrefix
              ? Padding(
                  padding: EdgeInsets.all(8.w),
                  child: AppImage(
                    widget.prefixImgPath,
                    width: 22.w,
                    height: 22.h,
                    fit: BoxFit.scaleDown,
                  ),
                )
              : widget.prefixIcon,
          hintText: widget.labelText,
        ),
      ),
    );
  }
}

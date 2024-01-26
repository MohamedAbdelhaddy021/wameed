import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppField extends StatefulWidget {
  const AppField({
    super.key,
    required this.labelText,
    this.isPassword = false, this.bottomPadding=16, this.prefixImgPath="", this.isPrefix=false,
  });

  final String labelText,prefixImgPath;
  final bool isPassword,isPrefix;
  final double bottomPadding;

  @override
  State<AppField> createState() => _AppFieldState();
}

class _AppFieldState extends State<AppField> {
  bool isHidden =true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: widget.bottomPadding.h),
      child: TextFormField(
        obscureText: isHidden,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        decoration: InputDecoration(
          filled: true,
          suffixIcon: widget.isPassword?IconButton(
            onPressed: () {
              isHidden = !isHidden;
              setState(() {});
            },
            icon: Icon(color: Colors.black.withOpacity(.30),
                isHidden ? Icons.visibility_off : Icons.visibility),
          )
              : null,
          prefixIcon:widget.isPrefix? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(widget.prefixImgPath,width: 22.w,height: 22.h,),
          ):null,
          hintText: widget.labelText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: const Color(0xff323232).withOpacity(.44),
          ),
          fillColor: const Color(0xffACACAC).withOpacity(.10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
                color: const Color(0xff39A7A7).withOpacity(.29), width: 1.5.w),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).primaryColor.withOpacity(.29),
                width: 1.5.w),
          ),
        ),
      ),
    );
  }
}

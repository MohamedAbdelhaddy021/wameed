import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon:
      Icon(CupertinoIcons.back, size: 28.w,color: Colors.black.withOpacity(.9),grade: 10,),
      onPressed: () {
        // Navigator.pop(context);
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontFamily: "poppins",
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
        ),
        text: "Regis",
        children: [
          TextSpan(
            text: "t",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: Theme.of(context).primaryColor,
              fontFamily: "courgette"
            )
          ),
          const TextSpan(text: "ration")
        ]
      )
    );
  }
}

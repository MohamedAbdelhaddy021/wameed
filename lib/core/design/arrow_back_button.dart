import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(CupertinoIcons.back, size: 28,),
      onPressed: () {
        // Navigator.pop(context);
      },
      color: Colors.black.withOpacity(.90),
    );
  }
}

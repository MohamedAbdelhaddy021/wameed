import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wameed/features/models/doctor.dart';

import '../../core/design/custom_app_bar.dart';
import '../../core/design/doctor_item.dart';

class AllDoctorsView extends StatefulWidget {
  const AllDoctorsView({super.key});


  @override
  State<AllDoctorsView> createState() => _DoctorState();
}

class _DoctorState extends State<AllDoctorsView> {
   bool loading = true;
  @override
  void initState() {
Timer(Duration(seconds: 1,milliseconds: 200), () {
  loading = false;
setState(() {

});
},);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Doctors"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 24.w),
            child: Text("All Doctors",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp)),
          ),
          Expanded(
            child: loading?Center(child: CircularProgressIndicator()):ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                itemBuilder: (context, index) {
                  final doctorData = docList[index];
                  return DoctorItem(
                    name: doctorData['Name'],
                    experience: doctorData['Years of Experience'],
                    price: doctorData["Price"],
                    qualification: doctorData['Qualification'],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 24.h),
                itemCount:45 ),
          ),
        ],
      ),
    );
  }
}

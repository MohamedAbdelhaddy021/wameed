import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/features/cubits/user_report.dart';
import 'package:wameed/views/patient/report.dart';

import '../../core/design/app_dialog.dart';
import '../../core/logic/dio_helper.dart';
import '../states/scan_image.dart';

class ScanImageCubit extends Cubit<ScanImageStates> {
  ScanImageCubit() : super(ScanImageStates());
  String?img;

  void scanImage() async {
    emit(ScanImageLoadingState());

    try {
      //upload image from device
      File imageFile = File(img!);
      String fileName = imageFile.path.split('/').last;

      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(imageFile.path, filename: fileName),
      });

      final response = await DioHelper().postData(
        url: "http://10.0.2.2:8000/api/savePic",
        data: formData,
      );

      if (response.statusCode == 200) {
        print(response.data);
        showDialog(
          context: navigatorKey.currentState!.context,
          builder: (context) {
            return AppDialog(
              buttonText: "See result",
              text: "Successfully uploaded",
              onTap: () {
                navigateTo(UserReportScreen(),removeHistory: true);
              },
            );
          },
        );
        emit(ScanImageSuccessState());
      } else {
        emit(ScanImageFailedState());
      }
    } catch (e) {
      print(e);
      emit(ScanImageFailedState());
    }
  }
}


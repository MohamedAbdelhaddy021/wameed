import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/logic/dio_helper.dart';
import '../states/scan_image.dart';

class ScanImageCubit extends Cubit<ScanImageStates> {
  ScanImageCubit() : super(ScanImageStates());
  File ? img;
  void scanImage() async {
    emit(ScanImageLoadingState());
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/savePic", data: {"image": img!.path});

    if (response.statusCode == 200) {
      print(response.data);
      emit(ScanImageSuccessState());
    } else {
      emit(ScanImageFailedState());
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/logic/dio_helper.dart';

import '../../core/logic/helper_methods.dart';
import '../states/edit_settings.dart';

class EditSettingsCubit extends Cubit<EditSettingsStates> {
  EditSettingsCubit() : super(EditSettingsStates());

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void editSetting() async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/edit-user-data", data: {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
    });
    if (response.statusCode == 200) {
      print(response.data);
      print("*" * 60);
      showToast(response.data);
      emit(EditSettingsSuccessState());
    } else {
      // print(response.data);
      emit(EditSettingsFailedState());
    }
  }
}

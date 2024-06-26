import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../states/auth/change_password.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordStates> {
  ChangePasswordCubit() : super(ChangePasswordStates());
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void changePassword() async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/updatePassword", data: {
      'email': emailController.text,
      'password': passwordController.text,
    });

    if (response.statusCode == 200) {
      print(response.data);
      emit(ChangePasswordSuccessState());
    } else {
      print(response.data['message']);
      emit(ChangePasswordFailedState());
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/cache_helper.dart';
import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../views/doctor/profile.dart';
import '../../../views/patient/home/view.dart';
import '../../models/login.dart';
import '../../states/auth/login.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());

  final emailController = TextEditingController(text: "mohamedabdelhady021@gmail.com");
  final passwordController = TextEditingController(text: "12345678");

  void logIn(String endPoint) async {
    emit(LoginLoadingState());
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/$endPoint", data: {
      'email': emailController.text,
      'password': passwordController.text,
    });
    if (response.statusCode == 200) {
      final model = LoginData.fromJson(response.data);
      CacheHelper.saveToken(model.accessToken);
      CacheHelper.isFromFirebase(bool: false);
      print(response.data);
      navigateTo(CacheHelper.isDoctor ? DoctorProfileView() : HomeView(),
          removeHistory: true);
      emit(LoginSuccessState());
    } else {
      print(response.data);
      emit(LoginFailedState());
    }
  }
}

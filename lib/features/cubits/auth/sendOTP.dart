
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/views/mutual/auth/otp.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../states/auth/otp.dart';

class OTPCubit extends Cubit<OTPStates> {
  OTPCubit() : super(OTPStates());

 final emailController=TextEditingController();
  void sendCode() async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/send-otp", data: {
      'email': emailController.text,
    });
    if (response.statusCode == 200) {
      print(response.data);
      navigateTo(OTPView(email: emailController.text,));
      emit(OTPSuccessState());
    } else {
      print("error:${response.data["message"]}");
      emit(OTPFailedState());
    }
  }
}

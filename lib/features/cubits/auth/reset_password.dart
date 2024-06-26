import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/core/logic/dio_helper.dart';

import '../../states/auth/reset_password.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit() : super(ResetPasswordStates());

  void resetPassword() async {
    
    final response =await DioHelper().postData(url: "http://10.0.2.2:8000/api/updatePassword", data: {});

    if(response.statusCode==200){
      emit(ResetPasswordSuccessState());
    }else{
      print(response.data['message']);
      emit(ResetPasswordFailedState());
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/views/mutual/auth/select_user_type.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../states/auth/logOut.dart';

class LogoutCubit extends Cubit<LogoutStates> {
  LogoutCubit() : super(LogoutStates());

  void logOut(String endPoint) async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/$endPoint/logout",data: {});
    if (response.statusCode == 200) {
      print(response.data);
      showToast(response.data['message']);
      navigateTo(SelectUserTypeView(isFormLogin: false), removeHistory: true);
      emit(LogoutSuccessState());
    } else {
      // print(response.data["error"]);
      emit(LogoutFailedState());
    }
  }
}

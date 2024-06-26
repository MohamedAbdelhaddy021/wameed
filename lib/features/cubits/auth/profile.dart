import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../models/profile.dart';
import '../../states/auth/profile.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileStates());

   ProfileData? profileData;
  void getUserData() async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/auth/me",data: {});
    if (response.statusCode == 200) {
      print(response.data);
      final model=ProfileData.fromJson(response.data);
      profileData=model;
      emit(ProfileSuccessState());
    } else {
      print(response.data["message"]);
      emit(ProfileFailedState());
    }
  }
}

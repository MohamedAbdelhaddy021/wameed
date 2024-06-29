import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/core/logic/cache_helper.dart';
import 'package:wameed/features/models/doc_profile.dart';

import '../../../core/logic/dio_helper.dart';
import '../../models/profile.dart';
import '../../states/auth/profile.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileStates());

   ProfileData? profileData;
   DoctorData? doctorData;
  void getUserData() async {
    final response = await DioHelper()
        .postData(url: "http://10.0.2.2:8000/api/${CacheHelper.isDoctor?"doc-auth":"auth"}/me",data: {});
    if (response.statusCode == 200) {
      print(response.data);
      final model= CacheHelper.isDoctor?DoctorData.fromJson(response.data):ProfileData.fromJson(response.data);
      if(CacheHelper.isDoctor){
        doctorData=model as DoctorData?;
      }else{
        profileData=model as ProfileData?;
      }
      emit(ProfileSuccessState());
    } else {
      print(response.data.toString());
      emit(ProfileFailedState());
    }
  }
}

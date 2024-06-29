import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/logic/dio_helper.dart';
import '../models/user_report.dart';
import '../states/user_report.dart';

class UserReportCubit extends Cubit<UserReportStates> {
  UserReportCubit() : super(UserReportStates());

  getUserReportData() async {
    emit(UserReportLoadingState());
    try {
      final response = await DioHelper().getData(url: "http://10.0.2.2:8000/api/userReports");
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        List<UserReport> reports = data.map((item) => UserReport.fromJson(item)).toList();
        emit(UserReportSuccessState(reports: reports));
      } else {
        emit(UserReportFailedState());
      }
    } catch (e) {
      print('Error: $e');
      emit(UserReportFailedState());
    }
  }
}

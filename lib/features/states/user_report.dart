import 'package:wameed/features/models/user_report.dart';

class UserReportStates {}

class UserReportSuccessState extends UserReportStates {
  final List<UserReport> reports;

  UserReportSuccessState({required this.reports});
}

class UserReportFailedState extends UserReportStates {}

class UserReportLoadingState extends UserReportStates {}

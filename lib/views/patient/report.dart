import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/core/design/custom_app_bar.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/patient/home/view.dart';

import '../../features/cubits/user_report.dart';
import '../../features/states/user_report.dart';

class UserReportScreen extends StatefulWidget {
  @override
  State<UserReportScreen> createState() => _UserReportScreenState();
}

class _UserReportScreenState extends State<UserReportScreen> {
  late UserReportCubit bloc;

  @override
  void initState() {
    bloc = BlocProvider.of(context);
    getData();
    super.initState();
  }

  getData() async{
    bloc.getUserReportData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Report'),
        leading: IconButton(
            onPressed: () {
              navigateTo(HomeView(), removeHistory: true);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if (state is UserReportLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is UserReportFailedState) {
            return Center(child: Text('Failed to load data'));
          } else if (state is UserReportSuccessState) {
            return ListView.builder(
              itemCount: state.reports.length,
              itemBuilder: (context, index) {
                final report = state.reports[index];
                return ListTile(
                  // title: Text('Doctor Diagnosis: ${report.Doctor}'),
                  subtitle: report.aiAnalyze==null?SizedBox():Text('AI Analyze: ${report.aiAnalyze}'),
                );
              },
            );
          } else {
            return Center(child: Text('Unexpected state'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.getUserReportData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

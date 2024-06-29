import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wameed/core/logic/helper_methods.dart';
import 'package:wameed/views/mutual/auth/login.dart';
import 'package:wameed/views/patient/home/view.dart';
import '../../../core/logic/dio_helper.dart';
import '../../states/auth/register.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterStates());
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  final vodafoneNumController = TextEditingController();
  final nationalIDController = TextEditingController();
  final experianceYearsController = TextEditingController();
  final priceController = TextEditingController();
  final qualificationsController = TextEditingController();


  void signUP() async {
    try {
      Map<String, dynamic> data = {
        'email': emailController.text,
        'name': nameController.text,
        'password': passController.text,
        'birth_day': '2024-05-13',
        'gender': 'male',
        'credit_number': '123456789',
        'vodafone_cash': "01098603578",
      };
      final response = await DioHelper().postData(
        url: "http://10.0.2.2:8000/api/auth/register",
        data: data,
      );

      if (response.statusCode == 201) {
        print(data);
        print(response.data);
        navigateTo(LoginView(), removeHistory: true);
        emit(RegisterSuccessState());
      } else {
        print(data);
        if (response.data is Map && response.data.containsKey('message')) {
          print(response.data['message']);
        } else {
          print(data);
          print('Unexpected response format: ${response.data}');
        }
        emit(RegisterFailedState());
      }
    } catch (e) {
      print('Error: $e');
      emit(RegisterFailedState());
    }
  }
  void signUPDoctor() async {
    try {
      Map<String, dynamic> data = {
        "email": emailController.text,
        "name": nameController.text,
        "password": passController.text,
        "qualifications": qualificationsController.text,
        "experiance": experianceYearsController.text,
        "work_days": ["Sunday"],
        "work_time": "9:00 am",
        "national_id": nationalIDController.text,
        "price": priceController.text,
        "birth_day": '2024-05-13',
        "gender": 'male',
        "credit_number": '123456789',
        "vodafone_cash": vodafoneNumController.text,
      };
      final response = await DioHelper().postData(
        url: "http://10.0.2.2:8000/api/doc-auth/register",
        data: data,
      );

      if (response.statusCode == 201) {
        print(data);
        print(response.data);
        navigateTo(LoginView(), removeHistory: true);
        emit(RegisterSuccessState());
      } else {
        print(data);
        if (response.data is Map && response.data.containsKey('message')) {
          print(response.data['message']);
        } else {
          print(data);
          print('Unexpected response format: ${response.data}');
        }
        emit(RegisterFailedState());
      }
    } catch (e) {
      print('Error: $e');
      emit(RegisterFailedState());
    }
  }
}

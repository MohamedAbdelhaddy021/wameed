import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wameed/core/logic/helper_methods.dart';
// import 'package:wameed/views/patient/home/calendar_item.dart';
//
// import '../../core/logic/firebase_auth_services.dart';
// import 'states.dart';
//
// class LoginCubit extends Cubit<LoginStates> {
//   LoginCubit() : super(LoginStates());
//
//
//
//   void signIn() async {
//     String email = emailController.text;
//     String password = passwordController.text;
//     final _auth = FirebaseAuthServices();
//     User? user = await _auth.signInWithEmailAndPassword(email, password);
//
//     if (formKey.currentState!.validate()) {
//       if (user != null) {
//         debugPrint("User is successfully logged in");
//         debugPrint("*" * 30);
//         navigateTo(HomeView(),removeHistory: true);
//       } else {
//         print("Some error happened while login");
//       }
//     }
//   }
// }

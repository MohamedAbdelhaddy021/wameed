import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wameed/views/mutual/auth/select_user_type.dart';

import '../../views/patient/home/view.dart';
import 'cache_helper.dart';
import 'helper_methods.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;




  Future <void> signOut()  async{
    Timer(Duration(seconds: 1),() {
      CacheHelper.clear();
      showToast("Successfully logged out");
      navigateTo(SelectUserTypeView(isFormLogin: false),removeHistory: true);
    },);

  }

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error occurred");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error occurred");
      print(e.toString());
    }
    return null;
  }

  static late String userImg;

  static signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      String? email = googleUser?.email;
      String? userName = googleUser?.displayName;
      userImg = googleUser!.photoUrl ?? "";
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print("-" * 50);
      CacheHelper.saveUserDetails(
          email!,
          userName!,
          userImg,
          googleUser.id,
          userCredential.additionalUserInfo!.isNewUser
          ,googleAuth?.accessToken??""
          );
      navigateTo(HomeView(), removeHistory: true);
    } catch (ex) {
      debugPrint(ex.toString());
      showToast("An error occurred while sign in with google");
    }
  }
}

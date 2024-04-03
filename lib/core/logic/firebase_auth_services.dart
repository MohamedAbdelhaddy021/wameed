
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../views/patient/home/view.dart';
import '../../views/patient/profile.dart';
import 'helper_methods.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email,
      String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e){
      print("some error occurred");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email,
      String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;

    } catch (e){
      print("some error occurred");
      print(e.toString());
    }
    return null;
  }

  static signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint(googleUser?.email.toString());
      print("-"*50);
      // navigateTo(userCredential.additionalUserInfo!.isNewUser?PatientProfilePage():HomeView(),removeHistory: true);
      navigateTo(HomeView(),removeHistory: true);
    } catch (ex) {
      debugPrint(ex.toString());
      showToast("An error occurred while sign in with google");
    }
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StoreData {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> uploadProfileImage(file) async {
    try{
      String? uid = _auth.currentUser!.uid;
      Reference ref = _storage.ref().child("profile_photos/$uid.jpg");
      await ref.putFile(file);
      String downloadURL = await ref.getDownloadURL();
      _auth.currentUser!.updatePhotoURL(downloadURL);
    }
    catch(ex){
      print("An Error Occurred:$ex");
      print("-"*50);
    }
    }

  }

